# frozen_string_literal: true

class FormErrorsComponent < ApplicationComponent
  def initialize(resource:, descriptor:)
    @resource = resource
    @descriptor = descriptor
  end
end
