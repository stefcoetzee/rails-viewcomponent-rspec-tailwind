class Athlete < ApplicationRecord
  belongs_to :team

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :jersey_number, presence: true, uniqueness: true
end
