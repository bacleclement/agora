class School < ApplicationRecord
  has_many :profiles

  # validates :school, uniqueness: true
end
