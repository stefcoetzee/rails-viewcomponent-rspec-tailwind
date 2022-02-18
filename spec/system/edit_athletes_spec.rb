require "rails_helper"

RSpec.describe "Athletes" do
  let(:team) { FactoryBot.create(:team) }
  let(:athlete) { FactoryBot.create(:athlete, team: team) }

  before do
    visit athlete_path(athlete)
  end

  it "can be edited with valid attributes" do
    click_link "Edit player details"
    new_first_name = Faker::Name.first_name
    new_last_name = Faker::Name.last_name
    new_position = Faker::Sports::Football.position
    new_jersey_number = Faker::Number.decimal_part(digits: 2)

    fill_in "First name", with: new_first_name
    fill_in "Last name", with: new_last_name
    fill_in "Position", with: new_position
    fill_in "Jersey number", with: new_jersey_number
    click_button "Update player"

    expect(page).to have_content new_first_name
    expect(page).to have_content new_last_name
    expect(page).to have_content new_position
    expect(page).to have_content "##{new_jersey_number.to_i}"
  end

  it "cannot be edited with valid attributes" do
    click_link "Edit player details"

    fill_in "First name", with: ""
    fill_in "Last name", with: ""
    fill_in "Position", with: ""
    fill_in "Jersey number", with: ""
    click_button "Update player"

    expect(page).to have_content "Player has not been updated."
    expect(page).to have_content "First name can't be blank"
    expect(page).to have_content "Last name can't be blank"
    expect(page).to have_content "Position can't be blank"
    expect(page).to have_content "Jersey number can't be blank"
  end
end
