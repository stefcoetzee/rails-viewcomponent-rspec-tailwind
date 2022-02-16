# frozen_string_literal: true

class BackNavigationComponent < LinkComponent
  def initialize(href:, text:)
    super(href: href)
    @text = text
  end
end
