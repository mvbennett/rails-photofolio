class Photograph < ApplicationRecord
  belongs_to :gallery

  has_one_attached :photo

  validates :photo, presence: true

  private

  def photo_size_validation
    errors[:photo] << "should be less than 5MB" if photo.size > 5.megabytes
  end
end
