# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

require 'optparse'

module VagrantPlugins
  module CloudCommand
    module ProviderCommand
      module Command
        class Update < Vagrant.plugin("2", :command)
          include Util

          def execute
            options = {}

            opts = OptionParser.new do |o|
              o.banner = "Usage: vagrant cloud provider update [options] organization/box-name provider-name version [url]"
              o.separator ""
              o.separator "Updates a provider entry on Vagrant Cloud"
              o.separator ""
              o.separator "Options:"
              o.separator ""

              o.on("-c", "--checksum CHECKSUM_VALUE", String, "Checksum of the box for this provider. --checksum-type option is required.") do |c|
                options[:checksum] = c
              end
              o.on("-C", "--checksum-type TYPE", String, "Type of checksum used (md5, sha1, sha256, sha384, sha512). --checksum option is required.") do |c|
                options[:checksum_type] = c
              end
            end

            # Parse the options
            argv = parse_options(opts)
            return if !argv
            if argv.count < 3 || argv.count > 4
              raise Vagrant::Errors::CLIInvalidUsage,
                help: opts.help.chomp
            end

            @client = client_login(@env)

            org, box_name = argv.first.split('/', 2)
            provider_name = argv[1]
            version = argv[2]
            url = argv[3]

            update_provider(org, box_name, version, provider_name, url, @client.token, options)
          end

          # Update a provider for the box version
          #
          # @param [String] org Organization name
          # @param [String] box Box name
          # @param [String] version Box version
          # @param [String] provider Provider name
          # @param [String] access_token User Vagrant Cloud access token
          # @param [Hash] options
          # @option options [String] :checksum Checksum of the box asset
          # @option options [String] :checksum_type Type of the checksum
          # @return [Integer]
          def update_provider(org, box, version, provider, url, access_token, options)
            if !url
              @env.ui.warn(I18n.t("cloud_command.upload.no_url"))
            end
            account = VagrantCloud::Account.new(
              custom_server: api_server_url,
              access_token: access_token
            )

            with_provider(account: account, org: org, box: box, version: version, provider: provider) do |p|
              p.checksum = options[:checksum] if options.key?(:checksum)
              p.checksum_type = options[:checksum_type] if options.key?(:checksum_type)
              p.url = url if !url.nil?
              p.save

              @env.ui.success(I18n.t("cloud_command.provider.update_success",
                provider: provider, org: org, box_name: box, version: version))

              format_box_results(p, @env)
              0
            end
          rescue VagrantCloud::Error => e
            @env.ui.error(I18n.t("cloud_command.errors.provider.update_fail",
              provider: provider, org: org, box_name: box, version: version))
            @env.ui.error(e.message)
            1
          end
        end
      end
    end
  end
end
