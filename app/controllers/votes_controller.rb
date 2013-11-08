class VotesController < ApplicationController

  def index
  end

  def create
    if params[:class]=="Post"
      @post = Post.find_by_id(params[:post_id])
      @post.votes.create(vote:params[:vote],user_id:params[:user_id],votable_type:params[:class])
      redirect_to posts_path
    else
      @comment = Comment.find_by_id(params[:comment_id])
      @comment.votes.create(vote:params[:vote],user_id:params[:user_id],votable_type:params[:class])
      redirect_to posts_path
    end
  end
end
