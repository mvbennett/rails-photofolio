class Photograph < ApplicationRecord
  belongs_to :gallery
  belongs_to :user
  has_one_attached :photo
end
