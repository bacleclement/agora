class Question < ApplicationRecord
  belongs_to :profile
  has_many :responses, dependent: :delete_all
end
