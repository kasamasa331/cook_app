class UserProfile < ApplicationRecord
  belongs_to :country
  has_many :recipe
end
