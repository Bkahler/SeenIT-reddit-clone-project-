class CommentsController < ApplicationController
  def index
    @post = Post.find_by_id(params[:post_id])
  end

  def create
    if params[:class] =="Post"
      @post = Post.find_by_id(params[:post_id])
      @post.comments.create(text:params[:comment_text],user_id:params[:user_id],commentable_type:params[:class] )
      redirect_to posts_path
    else
      @comment = Comment.find_by_id(params[:comment_id])
      @comment.comments.create(text:params[:comment_text],user_id:params[:user_id],commentable_type:params[:class])
      redirect_to posts_path
    end

  end
end
