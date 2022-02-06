class Team < ApplicationRecord
  has_many :athletes, dependent: :destroy

  validates :name, presence: true
end
