require "rails_helper"

RSpec.describe Athlete, type: :model do
  let(:team) { Team.new(name: Faker::Team.name) }
  let(:athlete) {
    Athlete.new(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      position: Faker::Sports::Football.position,
      jersey_number: Faker::Number.decimal_part(digits: 2),
      team: team
    )
  }

  it "is valid with valid attributes" do
    expect(athlete).to be_valid
  end

  it "is invalid with invalid attributes" do
    athlete.jersey_number = nil
    expect(athlete).to_not be_valid
  end
end
