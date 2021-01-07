
require 'proto/gen/plugin/plugin_pb'
require 'proto/gen/plugin/plugin_services_pb'
require 'logger'

module VagrantPlugins
  module CommandServe
    module Serve
      class ProviderService < Hashicorp::Vagrant::Sdk::ProviderService::Service
        LOG = Logger.new('/Users/sophia/project/vagrant-ruby/log.txt')

        def usable(req, _unused_call)
          nil
        end

        def usable_spec(req, _unused_call)
          nil
        end

        def installed(req, _unused_call)
          nil
        end

        def installed_spec(req, _unused_call)
          nil
        end

        def init(req, _unused_call)
          nil
        end

        def init_spec(req, _unused_call)
          nil
        end

        def action_up(req, _unused_call)
          LOG.debug("action up")
          # TODO: deserialize request
          # [<Hashicorp::Vagrant::Sdk::FuncSpec::Value: name: "", type: "hashicorp.vagrant.sdk.Args.Machine", value: <Google::Protobuf::Any: type_url: "type.googleapis.com/hashicorp.vagrant.sdk.Args.Machine", value: "\n\rmytestmachine\x12\x0F127.0.0.1:49505">>]
          LOG.debug(req)
          nil
        end

        def machine_arg_to_machine(req)

        end

        def action_up_spec(req, _unused_call)
          LOG.debug("action up spec")
          args = [
            Hashicorp::Vagrant::Sdk::FuncSpec::Value.new(
              type: "hashicorp.vagrant.sdk.Args.Machine",
              name: ""
            ),
          ]
          result = [
            nil,
          ]
          Hashicorp::Vagrant::Sdk::FuncSpec.new(
            args: args,
            result: result
          )
        end
      end
    end
  end
end