class Post < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  

  # ActiveStorage
  has_one_attached :image
end

