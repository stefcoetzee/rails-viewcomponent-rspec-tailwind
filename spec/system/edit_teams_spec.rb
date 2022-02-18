require "rails_helper"

RSpec.describe "Existing teams", type: :system do
  let(:team) { FactoryBot.create(:team) }

  before do
    visit team_path(team)
  end

  it "can be edited with valid attributes" do
    click_link "Edit team"
    new_team_name = Faker::Team.name.titleize
    fill_in "Name", with: new_team_name
    click_button "Update team"

    expect(page).to have_content "Team has been updated."
    expect(page).to have_content new_team_name
  end

  it "cannot be edited with invalid attributes" do
    click_link "Edit team"
    fill_in "Name", with: ""
    click_button "Update team"

    expect(page).to have_content "Team has not been updated."
    expect(page).to have_content "Name can't be blank"
  end
end
