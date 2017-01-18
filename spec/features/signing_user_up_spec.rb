require "rails_helper"

RSpec.feature "Users signup" do
  scenario "with valid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "testuser0@concon.com"
    fill_in "Password", with: "testuser0"
    fill_in "Password confirmation", with: "testuser0"
    #click_button "Sign up"
    
    #expected(page).to have_content("You have signed up successfully.")
  end
end