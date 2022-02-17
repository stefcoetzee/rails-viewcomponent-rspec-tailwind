require "rails_helper"

RSpec.describe PageHeaderComponent, type: :component do
  it "renders content" do
    test_text = "content"
    render_inline(described_class.new.with_content(test_text))

    expect(rendered_component).to include(test_text)
  end
end
