require 'rails_helper'

RSpec.feature "Comics Controller", type: :feature do
  scenario "User sees Comics link" do
    visit "/"

    expect(page).to have_content("Add New Comic")
  end

  scenario "User clicks link to new comic page" do
    visit "/"
    click_link "Add New Comic"

    expect(page).to have_content("Add a New Comic")
  end

  scenario "User sees and can add a new comic" do
    comic_1 = FactoryGirl.create(:comic)
    visit "/"
    click_link "Add New Comic"

    expect(page).to have_content("Title")
    expect(page).to have_content("Illustrator")
    expect(page).to have_content("Publisher")
    expect(page).to have_content("Year Published")
    expect(page).to have_content("ASIN")
    expect(page).to have_content("Condition")
  end

  scenario "User Adds New Comic" do
    visit "/"
    click_link "Add New Comic"

    fill_in 'Title', with: "Spider-Man"
    fill_in 'Publisher', with: "Stan Lee"
    fill_in 'Year Published', with: 1961
    fill_in 'Condition', with: "New"
    click_button "Submit"

    expect(page).to have_content("Title: Spider-Man")
    expect(page).to have_content("Publisher: Stan Lee")
    expect(page).to have_content("Year Published: 1961")
    expect(page).to have_content("Condition: New")

  end
end
