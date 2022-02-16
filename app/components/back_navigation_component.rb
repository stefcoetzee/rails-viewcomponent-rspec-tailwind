# frozen_string_literal: true

class BackNavigationComponent < ApplicationComponent
  def initialize(href:, text:)
    @href = href
    @text = text
  end

end
