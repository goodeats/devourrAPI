class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: {token: @post.token, id: @post.id}, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    head :no_content
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :description, :picture, :likes, :reheats, :mades, :stashes, :location)
  end
end
