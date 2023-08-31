class Recipe < ApplicationRecord
  belongs_to :country
  belongs_to :user, optional: true
  belongs_to :category
  has_many :ingredient
  #belongs_to :user_profile
  belongs_to :type
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :cooking_method, presence: true

  has_one_attached :image


end
