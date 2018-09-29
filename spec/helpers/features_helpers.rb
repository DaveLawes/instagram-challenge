def sign_up
  visit '/'
  click_link 'sign up'
  fill_in 'user_email', with: 'testing@rspec.com'
  fill_in 'user_password', with: '123456'
  fill_in 'user_password_confirmation', with: '123456'
  click_button 'Sign up'
end

def seed_test_database
  user = User.find_by(email: 'testing@rspec.com')
  name = 'IMG_20180730_190140_742.jpg'
  path = "#{Rails.root}/public/images/#{name}"
  post = Post.create({title: 'bohinj', user_id: user.id})
  post.image.attach(io: File.open(path), filename: name)
end

def seed_test_database_with_another_user_and_posts
  user = User.create({email: 'testing2@rspec.com', password: '123456'})
  name = 'IMG_20180728_111546_075.jpg'
  path = "#{Rails.root}/public/images/#{name}"
  post = Post.create({title: 'river', user_id: user.id})
  post.image.attach(io: File.open(path), filename: name)
end
