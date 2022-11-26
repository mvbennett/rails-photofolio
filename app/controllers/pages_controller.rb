class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = User.first
    @photos = []
    @user.photos.each { |photo| @photos.push([photo.key, photo.url]) }
    @photo_hash = @photos.to_h
  end

  def edit
    @user = current_user
  end
end
