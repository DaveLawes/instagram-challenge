require 'rails_helper'
require 'helpers/features_helpers'

RSpec.feature 'Likes', type: :feature do

  scenario 'A signed in user cannot like a photo' do
    visit '/posts'
    expect(page).to_not have_button 'Post'
    expect(page).to_not have_button 'Like'
  end

  scenario 'A signed in user can like a photo' do
    sign_up
    seed_test_database
    post_id = Post.find_by(title: 'bohinj').id
    visit current_path
    find("a[href='/posts/#{post_id}/likes']").click
    expect(page).to have_css("p.like_value_#{post_id}")
    page.find("p.like_value_#{post_id}", text: '1')
  end

end
