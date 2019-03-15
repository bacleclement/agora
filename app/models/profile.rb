class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :school

  has_many :responses
  has_many :questions

  validates :username, uniqueness: true
end
