class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc)
  end

  def create
    post = Post.create(message_params)
    redirect_to posts_url
  end

  def user
    user = User.find( current_user.id )
    @posts = Post.where(user_id: current_user.id).order(created_at: :desc)
  end

  private

  def message_params
    params[:post][:user_id] = current_user.id unless current_user == nil
    params.require(:post).permit(:title, :content, :image, :user_id)
  end
end
