class UserProfile < ApplicationRecord
  belongs_to :country
  has_many :recipe

  # ActiveStorage
  has_one_attached :image

end
