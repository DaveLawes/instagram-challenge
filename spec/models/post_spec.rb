require "rails_helper"

RSpec.describe Post, type: :model do

  before do
    @user = User.create({email: "dave@hotmail.com", password: "123456"})
    @post = Post.create({title: "test", user_id: @user.id})
  end

  it "is valid" do
    expect(@post).to be_valid
  end

  it "is not valid without a user id" do
    expect(subject).to_not be_valid
  end

  it "can have attachments" do
    name = "IMG_20180730_190140_742.jpg"
    path = "#{Rails.root}/public/images/#{name}"
    @post.image.attach(io: File.open(path), filename: name)
    expect(@post.image.attached?).to be true
  end

end
