class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :school

  validates :username, uniqueness: true
end
