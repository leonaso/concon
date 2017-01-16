require 'rails_helper'

RSpec.feature "Creating Recipes" do
  scenario "A user creates a new recipe" do
    visit "/"
    click_link "New Recipe"
    fill_in "Title", with: "Creating first recipe"
    fill_in "Body", with: "Lorem Ipsum"
    click_button "Create Recipe"
    
    expect(page).to have_content("Recipe has been created")
    expect(page.current_path).to eq(recipe_path)
    
  end
end