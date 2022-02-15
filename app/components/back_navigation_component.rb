# frozen_string_literal: true

class BackNavigationComponent < ApplicationComponent
  def initialize(path:, text:)
    @path = path
    @text = text
  end

end
