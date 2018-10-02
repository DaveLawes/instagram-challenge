require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET / " do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      post :create, params: { post: { title: "Hello, world!" } }
      expect(response).to redirect_to(posts_url)
    end
  end

  # posts#user
  describe "GET /user_posts/user_id" do
    let(:current_user) { double :current_user, id: "1" }

    it "responds with 200" do
      allow_any_instance_of(PostsController).to receive(:current_user).and_return(current_user)
      allow(Post).to receive_message_chain(:where, :order)
      get :user, params: { user_id: "1" }
      expect(response).to have_http_status(200)
    end
  end

end
