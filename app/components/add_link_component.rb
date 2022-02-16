# frozen_string_literal: true

class AddLinkComponent < ApplicationComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end
end
