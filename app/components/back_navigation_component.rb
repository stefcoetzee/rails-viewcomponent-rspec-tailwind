# frozen_string_literal: true

class BackNavigationComponent < LinkComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end
end
