require 'rails_helper'
require 'helpers/user_sign_up'

RSpec.feature 'Sign Out', type: :feature do

  scenario 'A user can sign out and is redirected to pages#index' do
    sign_up
    click_link 'Sign out'
    click_link 'sign in'
    fill_in 'user_email', with: 'testing@rspec.com'
    fill_in 'user_password', with: '123456'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
    expect(page).to have_content 'Here are all the photos!'
    expect(URI.parse(current_url).path).to eq '/posts'
  end

end
