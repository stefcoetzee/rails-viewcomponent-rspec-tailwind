# frozen_string_literal: true

class AddLinkComponent < ApplicationComponent
  def initialize(path:, text:)
    @path = path
    @text = text
  end

end
