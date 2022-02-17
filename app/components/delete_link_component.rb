# frozen_string_literal: true

class DeleteLinkComponent < LinkComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end
end
