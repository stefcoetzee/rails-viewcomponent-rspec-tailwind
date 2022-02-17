require "rails_helper"

RSpec.describe PageTitleComponent, type: :component do
  it "renders title text" do
    test_text = "some title text"
    render_inline(described_class.new(title: test_text))

    expect(rendered_component).to have_text(test_text)
  end
end
