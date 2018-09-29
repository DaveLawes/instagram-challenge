class LikesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    liked = Like.find_by(post_id: post.id, user_id: current_user.id)

    if !liked
      like = Like.create(post_id: post.id, user_id: current_user.id)
    else
      liked.destroy
    end

    redirect_to posts_path
  end

end
