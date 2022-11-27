class Photograph < ApplicationRecord
  belongs_to :gallery

  has_one_attached :photo
end
