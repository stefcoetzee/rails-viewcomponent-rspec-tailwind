require "rails_helper"

RSpec.describe FormErrorsComponent, type: :component do
  let(:team) { FactoryBot.create(:team) }
  let(:player) { FactoryBot.create(:athlete, team: team) }

  it "renders a player's error list" do
    render_inline(described_class.new(resource: player, descriptor: "player"))

    expect(rendered_component).to(
      have_content("0 errors")
        .and have_content("prevented this player from being saved")
    )
  end
end
