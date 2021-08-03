require "greet/version"

module Greet
  class Error < StandardError; end

  module Greeter
    # The greeter service definition.
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'test.Greeter'

      # Sends a greeting
      rpc :SayHello, ::Test::HelloRequest, ::Test::HelloReply
      # Sends a less formal greeting.
      rpc :SayHi, ::Test::HelloRequest, ::Test::HelloReply
      # return a number.
      rpc :Number, ::Test::NumRequest, ::Test::NumberResponse
    end

    Stub = Service.rpc_stub_class
  end
end
