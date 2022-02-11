require "rails_helper"

RSpec.feature "New teams" do
  before do
    visit "/"
    click_link "Add a team"
  end

  scenario "can be created with valid attributes" do
    team_name = Faker::Team.name
    fill_in "Name", with: team_name
    click_button "Add team"

    team = Team.find_by(name: team_name)
    expect(page.current_url).to eq team_url(team)
  end

  scenario "cannot be created with invalid attributes" do
    click_button "Add team"

    expect(page).to have_content "Name can't be blank"
  end
end
