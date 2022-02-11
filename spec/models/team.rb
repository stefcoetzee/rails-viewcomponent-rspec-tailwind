require "rails_helper"

RSpec.describe Team, type: :model do
  let(:team) { Team.new(name: Faker::Team.name) }

  it "is valid with valid attributes" do
    expect(team).to be_valid
  end

  it "is not valid without a name" do
    team.name = nil
    expect(Team.new).to_not be_valid
  end
end
