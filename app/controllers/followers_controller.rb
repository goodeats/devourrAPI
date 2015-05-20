class FollowersController < ApplicationController

  def index
    @followers = Follower.all
    render json: @followers, status: 200
  end

  def show
    @follower = Follower.find(params[:id])
    render json: @follower
  end

  def create
    @follower = Follower.new(follower_params)
    if @follower.save
      render json: @follower, status: :created, location: @follower
    else
      render json: @follower.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @follower = Follower.find(params[:id])
    @follower.destroy
    head :no_content
  end

  private

  def follower_params
    params.require(:post).permit(:id, :count, :user_id, :user)
  end
end
