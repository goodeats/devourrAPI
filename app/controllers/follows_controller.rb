class FollowsController < ApplicationController

  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @follows = @user.follows
      render json: @follows, status: 200
    else
      @follows = Follow.all
      render json: @follows, status: :ok
    end
  end

  def create
    @user = User.find(params[:user_id])
    @follow = Follow.new(follow_params)
    @user.follows << @follow
    if @follow.save
      render json: @follow, status: :created, location: @follow
    else
      render json: @follow.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    head :no_content
  end

  private

  def follow_params
    params.require(:follow).permit(:id, :follow_user_id, :user_id)
  end
end
