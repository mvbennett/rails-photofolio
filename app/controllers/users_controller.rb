class UsersController < ApplicationController
  def show
    if params[:id] != nil
      user = User.find(params[:id])
    elsif params[:username] != nil
      user = User.where(username: params[:username])
    end
    photos = []
    user.galleries.first.photographs.each { |photograph| photos.push([photograph.photo.key, photograph.photo.url]) }
    @photo_hash = photos.to_h

    authorize user
  end
end
