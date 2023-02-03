class Api::UsersController < ApplicationController
  def create
      @user = User.new(user_params)
      if @user.save
          render json: Api::Users::UserPresenter.new(user)
      else
          render json: @user.errors.full_messages, status: 422
      end
  end

  def show
      @user = User.find(params[:id])
      if @user
          render json: Api::Users::UserPresenter.new(@user)
      else
          render json: ['User not found'], status: 404
      end
  end

  def destroy
      current_user.destroy
      render 'api/programs'
  end

  private
  def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :password)
  end
end
