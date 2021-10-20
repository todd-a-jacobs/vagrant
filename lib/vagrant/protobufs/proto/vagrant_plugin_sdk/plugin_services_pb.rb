# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: vagrant_plugin_sdk/plugin.proto for package 'hashicorp.vagrant.sdk'

require 'grpc'
require 'vagrant_plugin_sdk/plugin_pb'

module Hashicorp
  module Vagrant
    module Sdk
      module TerminalUIService
        # *******************************************************************
        # Terminal UI Service
        # ******************************************************************
        #
        # TerminalUIService is a service that provides "sdk/terminal.UI" interface
        # to plugins. Plugins don't interact with this directly, they usually
        # interact with it indirectly via a terminal.UI implementation.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.TerminalUIService'

          rpc :Output, ::Hashicorp::Vagrant::Sdk::TerminalUI::OutputRequest, ::Google::Protobuf::Empty
          rpc :Events, stream(::Hashicorp::Vagrant::Sdk::TerminalUI::Event), stream(::Hashicorp::Vagrant::Sdk::TerminalUI::Response)
          rpc :IsInteractive, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::TerminalUI::IsInteractiveResponse
        end

        Stub = Service.rpc_stub_class
      end
      module Mapper
        # Mapper is a specialized type of plugin that provides type mappers
        # to convert to/from various types.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.Mapper'

          # ListMappers returns the list of mappers that this plugin supports.
          rpc :ListMappers, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Map::ListResponse
          # Map executes a mapper.
          rpc :Map, ::Hashicorp::Vagrant::Sdk::Map::Request, ::Hashicorp::Vagrant::Sdk::Map::Response
        end

        Stub = Service.rpc_stub_class
      end
      module StateBagService
        # *
        # Core plugin services
        #
        # Core State Bag //
        #
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.StateBagService'

          rpc :Get, ::Hashicorp::Vagrant::Sdk::StateBag::GetRequest, ::Hashicorp::Vagrant::Sdk::StateBag::GetResponse
          rpc :GetOk, ::Hashicorp::Vagrant::Sdk::StateBag::GetRequest, ::Hashicorp::Vagrant::Sdk::StateBag::GetOkResponse
          rpc :Put, ::Hashicorp::Vagrant::Sdk::StateBag::PutRequest, ::Hashicorp::Vagrant::Sdk::StateBag::PutResponse
          rpc :Remove, ::Hashicorp::Vagrant::Sdk::StateBag::RemoveRequest, ::Hashicorp::Vagrant::Sdk::StateBag::RemoveResponse
        end

        Stub = Service.rpc_stub_class
      end
      module PluginInfoService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.PluginInfoService'

          rpc :ComponentTypes, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::PluginInfo::ComponentList
          rpc :Name, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::PluginInfo::Name
        end

        Stub = Service.rpc_stub_class
      end
      module ProviderService
        # *******************************************************************
        # Provider Plugin Service
        # ******************************************************************
        #
        # Provider service is a provider that takes some set of arguments changes
        # the state of a machine
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ProviderService'

          # rpc Usable(google.protobuf.Empty) returns (Provider.UsableResp);
          # rpc Installed(google.protobuf.Empty) returns (Provider.InstalledResp);
          rpc :Usable, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Provider::UsableResp
          rpc :UsableSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Installed, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Provider::InstalledResp
          rpc :InstalledSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Init, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Google::Protobuf::Empty
          rpc :InitSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :ActionUp, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Provider::ActionResp
          rpc :ActionUpSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          # rpc ActionHalt(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionHaltSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSuspend(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSuspendSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionReload(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionReloadSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionResume(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionResumeSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionProvision(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionProvisionSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSnapshotSave(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSnapshotSaveSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSnapshotRestore(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSnapshotRestoreSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSnapshotDelete(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSnapshotDeleteSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionDestroy(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionDestroySpec(google.protobuf.Empty) returns (FuncSpec);
          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      # rpc IsAuthenticator(google.protobuf.Empty) returns (ImplementsResp);
      # rpc Auth(FuncSpec.Args) returns (Auth.AuthResponse);
      # rpc AuthSpec(google.protobuf.Empty) returns (FuncSpec);
      # rpc ValidateAuth(FuncSpec.Args) returns (google.protobuf.Empty);
      # rpc ValidateAuthSpec(google.protobuf.Empty) returns (FuncSpec);
      module ProvisionerService
        # *******************************************************************
        # Provisioner Plugin Service
        # ******************************************************************
        #
        # A Provisioner runs actions against a VM
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ProvisionerService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      module CommandService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.CommandService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :ExecuteSpec, ::Hashicorp::Vagrant::Sdk::Command::ExecuteSpecReq, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Execute, ::Hashicorp::Vagrant::Sdk::Command::ExecuteReq, ::Hashicorp::Vagrant::Sdk::Command::ExecuteResp
          rpc :CommandInfoSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :CommandInfo, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Command::CommandInfoResp
        end

        Stub = Service.rpc_stub_class
      end
      module CommunicatorService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.CommunicatorService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :MatchSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Match, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::MatchResp
          rpc :InitSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Init, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::InitResp
          rpc :ReadySpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Ready, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ReadyResp
          rpc :WaitForReadySpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :WaitForReady, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ReadyResp
          rpc :DownloadSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Download, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::FileTransferResp
          rpc :UploadSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Upload, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::FileTransferResp
          rpc :ExecuteSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Execute, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ExecuteResp
          rpc :PrivilegedExecuteSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :PrivilegedExecute, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ExecuteResp
          rpc :TestSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Test, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::TestResp
          rpc :ResetSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Reset, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ResetResp
        end

        Stub = Service.rpc_stub_class
      end
      module ConfigService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ConfigService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      module HostService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.HostService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :Detect, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Platform::DetectResp
          rpc :DetectSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Capability, ::Hashicorp::Vagrant::Sdk::Platform::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::Platform::Capability::Resp
          rpc :CapabilitySpec, ::Hashicorp::Vagrant::Sdk::Platform::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :HasCapability, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Platform::Capability::CheckResp
          rpc :HasCapabilitySpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Parent, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Platform::ParentResp
          rpc :ParentSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Seed, ::Hashicorp::Vagrant::Sdk::Args::Direct, ::Google::Protobuf::Empty
          rpc :Seeds, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Direct
        end

        Stub = Service.rpc_stub_class
      end
      module GuestService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.GuestService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :Detect, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Platform::DetectResp
          rpc :DetectSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Capability, ::Hashicorp::Vagrant::Sdk::Platform::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::Platform::Capability::Resp
          rpc :CapabilitySpec, ::Hashicorp::Vagrant::Sdk::Platform::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :HasCapability, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Platform::Capability::CheckResp
          rpc :HasCapabilitySpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Parent, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Platform::ParentResp
          rpc :ParentSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Seed, ::Hashicorp::Vagrant::Sdk::Args::Direct, ::Google::Protobuf::Empty
          rpc :Seeds, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Direct
        end

        Stub = Service.rpc_stub_class
      end
      module SyncedFolderService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.SyncedFolderService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      module BasisService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.BasisService'

          rpc :DataDir, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::DataDir::Basis
          rpc :UI, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::TerminalUI
          rpc :Host, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Host
        end

        Stub = Service.rpc_stub_class
      end
      module TargetService
        # *******************************************************************
        # Target services
        # ******************************************************************
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.TargetService'

          rpc :ResourceId, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::ResourceIdResponse
          rpc :Record, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::RecordResponse
          rpc :Name, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::NameResponse
          rpc :SetName, ::Hashicorp::Vagrant::Sdk::Target::SetNameRequest, ::Google::Protobuf::Empty
          rpc :Project, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Project
          rpc :Metadata, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::MetadataSet
          rpc :DataDir, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::DataDir::Target
          rpc :State, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Target::State
          rpc :UI, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::TerminalUI
          rpc :Specialize, ::Google::Protobuf::Any, ::Google::Protobuf::Any
          rpc :Provider, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Provider
          rpc :ProviderName, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::NameResponse
          rpc :UpdatedAt, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::UpdatedAtResponse
          rpc :Communicate, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Communicator
          rpc :Save, ::Google::Protobuf::Empty, ::Google::Protobuf::Empty
          rpc :SetUUID, ::Hashicorp::Vagrant::Sdk::Target::SetUUIDRequest, ::Google::Protobuf::Empty
          rpc :GetUUID, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::GetUUIDResponse
          rpc :Destroy, ::Google::Protobuf::Empty, ::Google::Protobuf::Empty
        end

        Stub = Service.rpc_stub_class
      end
      module TargetMachineService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.TargetMachineService'

          # Required so a machine can properly act as a target
          rpc :ResourceId, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::ResourceIdResponse
          rpc :Record, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::RecordResponse
          rpc :Name, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::NameResponse
          rpc :SetName, ::Hashicorp::Vagrant::Sdk::Target::SetNameRequest, ::Google::Protobuf::Empty
          rpc :Project, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Project
          rpc :Metadata, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::MetadataSet
          rpc :DataDir, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::DataDir::Target
          rpc :State, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Target::State
          rpc :UI, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::TerminalUI
          rpc :Specialize, ::Google::Protobuf::Any, ::Google::Protobuf::Any
          rpc :Provider, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Provider
          rpc :ProviderName, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::NameResponse
          rpc :UpdatedAt, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::UpdatedAtResponse
          rpc :Communicate, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Communicator
          rpc :Save, ::Google::Protobuf::Empty, ::Google::Protobuf::Empty
          rpc :SetUUID, ::Hashicorp::Vagrant::Sdk::Target::SetUUIDRequest, ::Google::Protobuf::Empty
          rpc :GetUUID, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::GetUUIDResponse
          rpc :Destroy, ::Google::Protobuf::Empty, ::Google::Protobuf::Empty
          # Machine specific
          rpc :SetID, ::Hashicorp::Vagrant::Sdk::Target::Machine::SetIDRequest, ::Google::Protobuf::Empty
          rpc :GetID, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::Machine::GetIDResponse
          rpc :SetState, ::Hashicorp::Vagrant::Sdk::Target::Machine::SetStateRequest, ::Google::Protobuf::Empty
          rpc :GetState, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Target::Machine::State
          rpc :Box, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Target::Machine::Box
          rpc :Guest, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Guest
          rpc :Reload, ::Google::Protobuf::Empty, ::Google::Protobuf::Empty
          rpc :ConnectionInfo, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::Machine::ConnectionInfoResponse
          rpc :UID, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::Machine::UIDResponse
          rpc :SyncedFolders, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Target::Machine::SyncedFoldersResponse
        end

        Stub = Service.rpc_stub_class
      end
      module ProjectService
        # *******************************************************************
        # Project services
        # ******************************************************************
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ProjectService'

          rpc :MachineNames, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::MachineNamesResponse
          rpc :TargetIndex, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::TargetIndex
          # rpc ActiveMachines(google.protobuf.Empty) returns (Project.ActiveMachinesResponse);
          rpc :CWD, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::CwdResponse
          rpc :DataDir, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::DataDir::Project
          rpc :VagrantfileName, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::VagrantfileNameResponse
          rpc :VagrantfilePath, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::VagrantfilePathResponse
          rpc :UI, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::TerminalUI
          rpc :Home, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::HomeResponse
          rpc :LocalData, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::LocalDataResponse
          rpc :Tmp, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::TmpResponse
          rpc :DefaultPrivateKey, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::DefaultPrivateKeyResponse
          rpc :Host, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Args::Host
          rpc :Target, ::Hashicorp::Vagrant::Sdk::Project::TargetRequest, ::Hashicorp::Vagrant::Sdk::Args::Target
          rpc :TargetNames, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::TargetNamesResponse
          rpc :TargetIds, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Project::TargetIdsResponse
        end

        Stub = Service.rpc_stub_class
      end
      module VagrantfileService
        # *******************************************************************
        # Vagrantfile services
        # ******************************************************************
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.VagrantfileService'

          rpc :GetVagrantfile, ::Hashicorp::Vagrant::Sdk::Vagrantfile::GetVagrantfileRequest, ::Hashicorp::Vagrant::Sdk::Vagrantfile::GetVagrantfileResponse
          rpc :Target, ::Hashicorp::Vagrant::Sdk::Vagrantfile::TargetRequest, ::Hashicorp::Vagrant::Sdk::Vagrantfile::TargetResponse
          rpc :TargetConfig, ::Hashicorp::Vagrant::Sdk::Vagrantfile::TargetConfigRequest, ::Hashicorp::Vagrant::Sdk::Vagrantfile::TargetConfigResponse
          rpc :TargetNames, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Vagrantfile::TargetNamesResponse
          rpc :PrimaryTargetName, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Vagrantfile::PrimaryTargetNameResponse
        end

        Stub = Service.rpc_stub_class
      end
      module TargetIndexService
        # *******************************************************************
        # TargetIndex services
        # ******************************************************************
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.TargetIndexService'

          rpc :Delete, ::Hashicorp::Vagrant::Sdk::TargetIndex::TargetIdentifier, ::Google::Protobuf::Empty
          rpc :Get, ::Hashicorp::Vagrant::Sdk::TargetIndex::TargetIdentifier, ::Hashicorp::Vagrant::Sdk::Args::Target
          rpc :Includes, ::Hashicorp::Vagrant::Sdk::TargetIndex::TargetIdentifier, ::Hashicorp::Vagrant::Sdk::TargetIndex::IncludesResponse
          rpc :Set, ::Hashicorp::Vagrant::Sdk::Args::Target, ::Hashicorp::Vagrant::Sdk::Args::Target
          rpc :All, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::TargetIndex::AllResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
