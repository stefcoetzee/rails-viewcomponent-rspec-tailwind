# frozen_string_literal: true

class AddLinkComponent < LinkComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end
end
