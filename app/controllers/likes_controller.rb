class LikesController < ApplicationController

  def index
    if params[:post_id]
      @post = Post.find(params[:post_id])
      @likes = @post.likes
      render json: @likes, status: 200
    else
      @likes = Like.all
      render json: @likes, status: :ok
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @like = Like.new(like_params)
    @post.likes << @like
    if @like.save
      render json: @like, status: :created
    else
      render json: like.errors,
      status: :unprocessable_entity
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    head :no_content
  end

  private
  def like_params
    params.require(:like).permit(:id, :count, :post_id, :user_id, :user)
  end

end
