# frozen_string_literal: true

class LinkComponent < ApplicationComponent
  def initialize(href:)
    @href = href
  end
end
