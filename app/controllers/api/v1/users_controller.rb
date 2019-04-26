module Api
  module V1
    class UsersController < ApplicationController
      before_action :get_user, only: [:show, :update, :delete]

      def index
        @users = User.all
        render json: @users
      end

      def show
      end

      def create
        @user = User.new(users_params)
        if @user.save
          render json: @user
        else
          render json: {status: 'ERROR', message: 'A new user was not able to be created', data: @user.errors}, status: :unproccessable_entity
        end
      end

      def update
        if @user.update(users_params)
          render json: @user
        else
          render json: {status: 'ERROR', message: 'user was not able to be update', data: @user.errors}, status: :unproccessable_entity
        end
      end

      def delete
        @user.destroy
        render json: @user
      end

      private

      def get_user
        @user = User.find(params[:id])
        render json: @user
      end

      def users_params
        params.permit(:username, :password, :firstname, :lastname, :age, :grade, :goal, :subject, :learning_disability, :learning_disability_type, :experience, :education, :price_per_hr, :specialty, :hires, :rating, :active, :role)
      end
    end
  end
end
