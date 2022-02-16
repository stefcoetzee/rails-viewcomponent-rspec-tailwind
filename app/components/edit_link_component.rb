# frozen_string_literal: true

class EditLinkComponent < LinkComponent
  def initialize(href:, text:)
    super(href: href)
    @text = text
  end
end
