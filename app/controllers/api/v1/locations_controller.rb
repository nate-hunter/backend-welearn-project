module Api
  module V1
    class LocationsController < ApplicationController
      before_action :get_location, only: [:show, :update, :delete]

      def index
        @locations = Location.all
        render json: @locations
      end

      def show
      end

      def create
        @location = Location.new(locations_params)
        if @location.save
          render json: @location
        else
          render json: {status: 'ERROR', message: 'A new location was not able to be created', data: @location.errors}, status: :unproccessable_entity
        end
      end

      def update
        if @location.update(locations_params)
          render json: @location
        else
          render json: {status: 'ERROR', message: 'location was not able to be update', data: @location.errors}, status: :unproccessable_entity
        end
      end

      def delete
        @location.destroy
        render json: @location
      end

      private

      def get_location
        @location = Location.find(params[:id])
      end

      def locations_params
        params.permit(:address, :full_address, :neighborhood)
      end
    end
  end
end
