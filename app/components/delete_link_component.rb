# frozen_string_literal: true

class DeleteLinkComponent < ApplicationComponent
  def initialize(path:, text:)
    @path = path
    @text = text
  end

end
