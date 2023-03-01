module Api
  module V1
    class HealthController < ApiController
      def index
        render json: { status: true }
      end
    end
  end
end
