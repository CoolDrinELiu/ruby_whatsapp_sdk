# frozen_string_literal: true
# typed: true

require_relative "responses/message_data_response"
require_relative "responses/phone_number_data_response"
require_relative "responses/phone_numbers_data_response"
require_relative "responses/read_message_data_response"
require_relative "responses/message_error_response"

module WhatsappSdk
  module Api
    class Response
      extend T::Sig

      attr_accessor :error, :data

      def initialize(response:, data_class_type:, error_class_type: Responses::MessageErrorResponse)
        @data = data_class_type.build_from_response(response: response)
        @error = error_class_type.build_from_response(response: response)
      end

      # @return [Boolean] Whether or not the response is successful.
      sig { returns(T::Boolean) }
      def ok?
        @error.nil?
      end

      # @return [Boolean] Whether or not the response has an error.
      sig { returns(T::Boolean) }
      def error?
        !!@error
      end
    end
  end
end
