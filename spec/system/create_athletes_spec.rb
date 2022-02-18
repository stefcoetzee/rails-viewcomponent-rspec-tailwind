require "rails_helper"

RSpec.describe "New athletes", type: :system do
  let!(:team) { FactoryBot.create(:team) }

  before do
    visit root_path
    click_link team.name
    click_link "Add a player"
  end

  it "can be created with valid attributes" do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    position = Faker::Sports::Football.position
    jersey_number = Faker::Number.decimal_part(digits: 2)

    fill_in "First name", with: first_name
    fill_in "Last name", with: last_name
    fill_in "Position", with: position
    fill_in "Jersey number", with: jersey_number
    click_button "Add player"

    expect(page).to have_content "Player has been added."
    click_link last_name

    expect(page).to have_content first_name
    expect(page).to have_content last_name
    expect(page).to have_content position
    expect(page).to have_content "##{jersey_number.to_i}"
  end

  it "cannot be created with invalid attributes" do
    fill_in "First name", with: ""
    fill_in "Last name", with: ""
    fill_in "Position", with: ""
    fill_in "Jersey number", with: ""
    click_button "Add player"

    expect(page).to have_content "Player has not been added."
    expect(page).to have_content "First name can't be blank"
    expect(page).to have_content "Last name can't be blank"
    expect(page).to have_content "Position can't be blank"
    expect(page).to have_content "Jersey number can't be blank"
  end
end
