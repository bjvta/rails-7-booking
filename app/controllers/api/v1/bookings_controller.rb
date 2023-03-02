# frozen_string_literal: true

module Api
  module V1
    class BookingsController < ApiController
      skip_before_action :verify_authenticity_token
      def index
        render json: Booking.all
      end
      def create
        booking = Booking.create(booking_params)
        render json: booking
      end
      def update
        booking = Booking.find(params[:id])
        booking.update(booking_params)
        render json: booking
      end
      def destroy
        Booking.destroy(params[:id])
        render json: { success: true }
      end
      private
      def booking_params
        params.require(:booking).permit(:name, :date, :time, :address)
      end
    end
  end
end
