require "rails_helper"

RSpec.describe "Athletes can be deleted" do
  let(:team) { FactoryBot.create(:team) }
  let(:athlete) { FactoryBot.create(:athlete, team: team) }

  before do
    visit athlete_path(athlete)
  end

  it "successfully", js: true do
    click_link "Delete player"
    accept_alert

    expect(page).to have_content "Player has been deleted."
    expect(page).to_not have_content athlete.first_name
    expect(page).to_not have_content athlete.last_name
  end
end
