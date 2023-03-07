# frozen_string_literal: true

module Api
  module V1
    class BookingsController < ApiController
      skip_before_action :verify_authenticity_token
      def index
        @bookings = Booking.all
        render json: @bookings.order(id: :desc).map{ |b| b.as_json }
      end

      def list_for_calendar
        @bookings = Booking.all
      end

      def create
        booking = Booking.create(booking_params)
        render json: booking.as_json
      end

      def show
        booking = Booking.find(params[:id])
        render json: booking.as_json
      end

      def update
        booking = Booking.find(params[:id])
        booking.update(booking_params)
        render json: booking.as_json
      end

      def destroy
        Booking.destroy(params[:id])
        render json: { success: true }
      end
      private
      def booking_params
        params.require(:booking).permit(:name, :date, :time, :hours, :address)
      end
    end
  end
end
