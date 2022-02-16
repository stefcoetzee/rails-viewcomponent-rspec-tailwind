# frozen_string_literal: true

class EditLinkComponent < ApplicationComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end

end
