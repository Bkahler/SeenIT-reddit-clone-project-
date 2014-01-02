class PostsController < ApplicationController

  def index
    p current_user
    @posts = Post.all.reverse

  end

  def create
     @post = Post.create(link:params[:post_link],body:params[:tagline],user_id:params[:user_id])
     redirect_to posts_path
  end

end
