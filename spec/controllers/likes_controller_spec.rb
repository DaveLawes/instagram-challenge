require 'rails_helper'

RSpec.describe LikesController, type: :controller do

  before do
    user = User.create({email: 'testing2@rspec.com', password: '123456'})
    @post = Post.create({title: "test", user_id: user.id})

  end

  describe "POST /" do
    it "returns http success" do
      get :create, params: { post_id: @post.id }
      expect(response).to have_http_status(302)
    end

    it "redirects to posts_url" do
      get :create, params: { post_id: @post.id }
      expect(response).to redirect_to(posts_url)
    end
   end
end
