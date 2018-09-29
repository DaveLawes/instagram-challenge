require "rails_helper"
require "helpers/features_helpers"

RSpec.feature "Sign Up", type: :feature do
  scenario "User can sign up" do
    visit "/"
    expect(page).to have_content("Oh hi there, welcome to Instagram")
    click_link "sign up"
    expect(page).to have_content("Yeah, lets sign up!")
    fill_in "user_email", with: "testing@rspec.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully"
  end

  scenario "After sign up a user is directed to the posts index page" do
    sign_up
    expect(page).to have_content "Instagram"
    expect(URI.parse(current_url).path).to eq "/posts"
  end
end
