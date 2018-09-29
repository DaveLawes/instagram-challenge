require "rails_helper"
require "helpers/features_helpers"

RSpec.feature "All Posts", type: :feature do

  scenario "A signed in user can see all photos" do
    sign_up
    seed_test_database
    visit current_path # refresh page so @posts in controller is updated
    expect(page).to have_content "bohinj"
    expect(page).to have_css("img[src*='IMG_20180730_190140_742.jpg']")
  end

end
