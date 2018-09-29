class ApplicationController < ActionController::Base
  protected
  def after_sign_in_path_for(user)
    posts_url
  end
end
