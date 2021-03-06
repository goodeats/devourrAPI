class UsersController < ApplicationController

  before_filter :set_user, only: [:show, :update, :destroy]

  def login
    user = User.find_by(username: params[:username])
    if user = user.authenticate(params[:password])
      session[:current_user_id] = user.token
      render json: user, status: :accepted
    else
      head :unauthorized
    end
  end

  def logout
    head :ok
  end

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {token: @user.token, id: @user.id}, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :username, :email, :password, :password_confirmation, :token, :bio, :avatar, :website, :location, :privacy)
  end

  def new_user_params
    params.require(:user).permit(:id, :name, :username, :email, :password, :password_confirmation, :token)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
