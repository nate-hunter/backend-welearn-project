module Api
  module V1
    class UsersController < ApplicationController
      before_action :get_user, only: [:show, :update, :delete]
      skip_before_action :authorized, only: [:create]

      def index
        @users = User.all
        render json: @users
      end

      def show
      end

      def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      end

      def create
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token}, status: :created
        else
          render json: { error: 'failed to create user', message: 'user was not able to be created', data: @user.errors }, status: :not_acceptable
        end
      end

      def update
        if @user.update(user_params)
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
      end

      def user_params
        params.require(:user).permit(:username, :password, :role, :firstname, :lastname, :age, :grade)
      end
    end
  end
end
