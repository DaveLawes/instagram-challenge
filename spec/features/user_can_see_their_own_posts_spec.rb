require 'rails_helper'
require 'helpers/features_helpers'

RSpec.feature 'Own posts', type: :feature do

  scenario 'A signed in user can see their own photos' do
    sign_up
    seed_test_database
    seed_test_database_with_another_user_and_posts
    click_link 'Your photos' # user handle for rspec tests
    expect(page).to have_content 'Here are all your photos'
    expect(page).to have_content 'bohinj'
    expect(page).to have_css("img[src*='IMG_20180730_190140_742.jpg']")
    expect(page).to_not have_content 'river'
    expect(page).to_not have_css("img[src*='IMG_20180728_111546_075.jpg']")
  end

  scenario 'After seeing their own photos a user can get back to posts#index' do
    sign_up
    seed_test_database
    click_link 'Your photos'
    click_link 'All photos'
    expect(URI.parse(current_url).path).to eq '/posts'
  end


end
