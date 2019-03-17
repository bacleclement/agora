class Response < ApplicationRecord
  belongs_to :question
  belongs_to :profile
  has_one :category
  validates :description, length: { minimum: 20 }
end
