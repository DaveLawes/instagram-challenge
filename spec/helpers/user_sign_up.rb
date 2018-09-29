def sign_up
  visit '/'
  click_link 'sign up'
  fill_in 'user_email', with: 'testing@rspec.com'
  fill_in 'user_password', with: '123456'
  fill_in 'user_password_confirmation', with: '123456'
  click_button 'Sign up'
end
