class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #belongs_to :country　後で消すかも

  has_one :user_profile, dependent: :destroy

  has_many :recipes
end
