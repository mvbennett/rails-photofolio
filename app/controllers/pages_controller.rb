class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = User.first
    @photos = []
    @user.photos.each { |photo| @photos.push(Cloudinary::Utils.cloudinary_url(photo.key)) }
    @photo_hash = @photos.to_h { |photo| [photo.last(28), photo] }
  end
end
