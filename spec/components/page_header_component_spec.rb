require "rails_helper"

RSpec.describe PageHeaderComponent, type: :component do
  it "renders a page header" do
    render_inline(PageHeaderComponent.new.with_content("content"))

    expect(rendered_component).to include("content")
  end
end
