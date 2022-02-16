# frozen_string_literal: true

class DeleteLinkComponent < ApplicationComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end

end
