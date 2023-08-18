class Recipe < ApplicationRecord
  belongs_to :country
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
end
