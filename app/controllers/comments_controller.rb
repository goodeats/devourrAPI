class CommentsController < ApplicationController

  def index
    if params[:post_id]
      @post = Post.find(params[:post_id])
      @comments = @post.comments
      render json: @comments, status: 200
    else
      @comments = Comment.all
      render json: @comments, status: :ok
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @post.comments << @comment
    if @comment.save
      render json: @comment, status: :created
    else
      render json: comment.errors,
      status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    head :no_content
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :picture, :likes, :post_id, :user_id, :user)
  end

end
