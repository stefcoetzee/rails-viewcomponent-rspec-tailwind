require "rails_helper"

RSpec.feature "Athletes can be deleted" do
  let(:team) { FactoryBot.create(:team) }
  let(:athlete) { FactoryBot.create(:athlete, team: team) }

  before do
    visit athlete_path(athlete)
  end

  scenario "successfully", js: true do
    click_link "Remove player"
    accept_alert

    expect(page).to have_content "Player has been removed."
    expect(page).to_not have_content athlete.last_name
    expect(page).to_not have_content athlete.jersey_number
  end
end
