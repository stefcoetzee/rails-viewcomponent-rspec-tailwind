# frozen_string_literal: true

class EditLinkComponent < LinkComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end
end
