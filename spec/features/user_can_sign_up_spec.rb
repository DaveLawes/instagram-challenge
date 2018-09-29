require 'rails_helper'

RSpec.feature "Sign Up", type: :feature do

  before do

  end

  scenario "User can sign up" do
    visit "/"
    expect(page).to have_content("Welcome to Instagram")
  end

end
