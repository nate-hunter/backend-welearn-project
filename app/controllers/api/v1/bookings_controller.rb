module Api
  module V1
    class BookingsController < ApplicationController
      before_action :get_booking, only: [:show, :update, :delete]
      skip_before_action :authorized, only: [:index, :show]

      def index
        @bookings = Booking.all
        render json: @bookings
      end

      def show
      end

      def create
        @booking = Booking.new(booking_params)
        if @booking.save
          render json: @booking
        else
          render json: {status: 'ERROR', message: 'A new booking was not able to be created', data: @booking.errors}, status: :unproccessable_entity
        end
      end

      def update
        if @booking.update(booking_params)
          render json: @booking
        else
          render json: {status: 'ERROR', message: 'Booking was not able to be update', data: @booking.errors}, status: :unproccessable_entity
        end
      end

      def delete
        @booking.destroy
        render json: @booking
      end

      private

      def get_booking
        @booking = Booking.find(params[:id])
      end

      def booking_params
        params.permit(:id, :student_id, :session_length, :session_cost, :available)
      end
    end
  end
end
