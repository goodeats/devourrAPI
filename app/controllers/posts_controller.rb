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
    # @user = User.find(params[:user_id])
    @post = Post.new(new_post_params)
    # @user.posts << @post
    if @post.save
      render json: @post, status: :created, location: @post
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

  def new_post_params
    params.require(:post).permit(:title, :description, :picture, :location, :user_id)
  end

  def post_params
    params.require(:post).permit(:id, :title, :description, :picture, :likes, :reheats, :mades, :stashes, :location)
  end
end
