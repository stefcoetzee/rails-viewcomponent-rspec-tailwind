require "rails_helper"

RSpec.describe "New teams", type: :system do
  before do
    visit "/"
    click_link "Add a team"
  end

  it "can be created with valid attributes" do
    team_name = Faker::Team.name
    fill_in "Name", with: team_name
    click_button "Add team"

    team = Team.find_by(name: team_name)
    expect(page.current_url).to eq team_url(team)
  end

  it "cannot be created with invalid attributes" do
    team_count = Team.count

    click_button "Add team"

    expect(page).to have_content "Name can't be blank"
    expect(team_count).to eq Team.count
  end
end
