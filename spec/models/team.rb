require "rails_helper"

RSpec.describe Team, type: :model do
  it "is valid with valid attributes" do
    expect(Team.new(name: Faker::Team.name)).to  be_valid
  end

  it "is not valid without a name" do
    expect(Team.new).to_not be_valid
  end
end
