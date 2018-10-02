require 'rails_helper'

RSpec.describe LikesController, type: :controller do

  let(:current_user) { double :current_user, id: "1" }
  let(:liked) { double :like, destroy: "" }

  before do
    allow_any_instance_of(LikesController).to receive(:current_user).and_return(current_user)
  end

  describe "POST /" do
    context "if post not already liked" do
      before do
        allow(Like).to receive(:find_by)
      end

      it "returns http success" do
        get :create, params: { post_id: "1" }
        expect(response).to have_http_status(302)
      end

      it "calls method create on Like" do
        expect(Like).to receive(:create)
        get :create, params: { post_id: "1"}
      end
    end

    context "if post already liked" do
      it "calls method destroy on Like" do
        allow(Like).to receive(:find_by).and_return(liked)
        expect(liked).to receive(:destroy)
        get :create, params: { post_id: "1"}
      end
    end


    it "redirects to posts_url" do
      get :create, params: { post_id: "1" }
      expect(response).to redirect_to(posts_url)
    end
   end
end
