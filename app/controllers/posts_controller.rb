class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(message_params)
    redirect_to posts_url
  end

  private

  def message_params
    params.require(:post).permit(:title, :content, images[])
  end
end
