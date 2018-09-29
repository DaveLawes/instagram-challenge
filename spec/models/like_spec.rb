require 'rails_helper'

RSpec.describe Like, type: :model do
    before do
      @user = User.create({email: 'dave@hotmail.com', password: '123456'})
      @post = Post.create({title: 'test', user_id: @user.id})
      @like = Like.create({post_id: @post.id, user_id: @user.id})
    end

    it 'is valid' do
      expect(@like).to be_valid
    end

    it 'is not valid without a user_id and post_id' do
      expect(subject).to_not be_valid
    end

end
