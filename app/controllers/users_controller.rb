class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    photos = []
    user.galleries.first.photographs.each { |photograph| photos.push([photograph.photo.key, photograph.photo.url]) }
    @photo_hash = photos.to_h
  end
end
