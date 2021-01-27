class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2, maximum: 20 }
  validates :introduction, length: {maximum: 49 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, dependent: :destroy
  attachment :image 
  attachment :profile_image
end
