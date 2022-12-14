class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :photos
  has_many :galleries, dependent: :destroy
  has_many :photographs, through: :galleries, dependent: :destroy

  validates :username, uniqueness: { case_sensitive: false }
end
