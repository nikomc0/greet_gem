# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: greet.proto for package 'greet'

require 'grpc'
require 'greet_pb'

module Greet
  module Greeter
    # The greeter service definition.
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'greet.Greeter'

      # Sends a greeting
      rpc :SayHello, ::Greet::HelloRequest, ::Greet::HelloReply
      # Sends a less formal greeting.
      rpc :SayHi, ::Greet::HelloRequest, ::Greet::HelloReply
      # return a number.
      rpc :Number, ::Greet::NumRequest, ::Greet::NumberResponse
      rpc :Authentication, ::Greet::AuthenticateRequest, ::Greet::AuthenticateResponse
    end

    Stub = Service.rpc_stub_class
  end
end
