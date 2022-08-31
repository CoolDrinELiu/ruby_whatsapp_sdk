# frozen_string_literal: true
# typed: true

require_relative "data_response"

module WhatsappSdk
  module Api
    module Responses
      class SuccessResponse < DataResponse
        sig { params(response: Hash).void }
        def initialize(response:)
          @success = response["success"]
          super(response)
        end

        sig { override.params(response: Hash).returns(T.nilable(DataResponse)) }
        def self.build_from_response(response:)
          return unless response["success"]

          new(response: response)
        end

        sig { returns(T::Boolean) }
        def success?
          @success
        end
      end
    end
  end
end
