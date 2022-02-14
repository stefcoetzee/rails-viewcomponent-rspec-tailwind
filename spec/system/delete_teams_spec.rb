require "rails_helper"

RSpec.describe "Teams can be deleted" do
  let!(:team1) { FactoryBot.create(:team) }
  let!(:team2) { FactoryBot.create(:team) }

  before do
    visit team_path(team1)
  end

  it "successfully", js: true do
    click_link "Delete team"
    accept_alert

    expect(page).to have_content "Team has been deleted."
    expect(page).to_not have_content team1.name
    expect(page).to have_content team2.name
  end
end
