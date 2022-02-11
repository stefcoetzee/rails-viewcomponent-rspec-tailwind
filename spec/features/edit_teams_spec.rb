require "rails_helper"

RSpec.feature "Teams can be edited" do
  let(:team) do
    FactoryBot.create(:team)
  end

  before do
    visit team_path(team)
  end

  scenario "with valid attributes" do
    click_link "Edit team"
    new_team_name = Faker::Team.name
    fill_in "Name",	with: new_team_name
    click_button "Update team"

    expect(page).to have_content new_team_name
  end
end
