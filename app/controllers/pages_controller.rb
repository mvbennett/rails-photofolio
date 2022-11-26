class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = User.first
    @photos = []
    @user.photos.each { |photo| @photos.push([photo.key, "https://res.cloudinary.com/dduinomn4/image/upload/v1668830678/production/#{photo.key}.jpg"]) }
    @photo_hash = @photos.to_h
  end
end
