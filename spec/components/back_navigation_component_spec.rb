require "rails_helper"

RSpec.describe BackNavigationComponent, type: :component do
  it "renders a back-navigation link" do
    test_url = "https://example.com"
    test_text = "team"
    render_inline(described_class.new(href: test_url, text: test_text))

    expect(rendered_component).to have_link(
      "Back to #{test_text}",
      href: test_url
    )
  end
end
