class Recipe < ApplicationRecord
  belongs_to :country
  belongs_to :user
  belongs_to :category
  has_many :ingredient
  belongs_to :user_profile
  belongs_to :type

  validates :title, presence: true
  validates :description, presence: true
  validates :cooking_method, presence: true

  has_one_attached :image
end
