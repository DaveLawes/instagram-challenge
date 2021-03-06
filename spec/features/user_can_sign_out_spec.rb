require "rails_helper"
require "helpers/features_helpers"

RSpec.feature "Sign Out", type: :feature do
  scenario "A user can sign out and is redirected to pages#index" do
    sign_up
    expect(page).to have_content "You have signed up successfully"
    expect(page).to have_link "Sign out"
    click_link "Sign out"
    expect(page).to have_content "Oh hi there, welcome to Instagram"
    expect(URI.parse(current_url).path).to eq "/"
  end
end
