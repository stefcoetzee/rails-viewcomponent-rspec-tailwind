require "rails_helper"

RSpec.feature "Athletes can be edited" do
  let(:team) { FactoryBot.create(:team) }
  let(:athlete) { FactoryBot.create(:athlete, team: team) }

  before do
    visit athlete_path(athlete)
  end

  scenario "successfully" do
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
end
