require 'rails_helper'
require 'helpers/features_helpers'

RSpec.feature 'All Posts', type: :feature do

  scenario 'A signed in user cannot post' do
    visit '/posts'
    expect(page).to_not have_button 'Post'
  end

  scenario 'A signed in user can post' do
    sign_up
    expect(page).to have_button 'Post'
    fill_in 'post_title', with: 'lake'
    name = 'IMG_20180725_224007_683.jpg'
    path = "#{Rails.root}/public/images/#{name}"
    attach_file('post_image', path)
    click_button 'Post'
    expect(page).to have_content 'lake'
    expect(page).to have_css("img[src*='IMG_20180725_224007_683.jpg']")
  end

end
