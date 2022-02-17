require "rails_helper"

RSpec.describe EditLinkComponent, type: :component do
  it "renders an edit link" do
    test_url = "https://example.com"
    test_text = "player"
    render_inline(described_class.new(href: test_url, text: test_text))

    expect(rendered_component).to have_link "Edit #{test_text}", href: test_url
  end
end
