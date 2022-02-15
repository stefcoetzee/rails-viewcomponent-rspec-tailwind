# frozen_string_literal: true

class EditLinkComponent < ApplicationComponent
  def initialize(path:, text:)
    @path = path
    @text = text
  end

end
