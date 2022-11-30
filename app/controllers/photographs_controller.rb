class PhotographsController < ApplicationController
  def new
    @photograph = Photograph.new

    authorize @photograph
  end

  def create
    user = current_user
    gallery = user.galleries.first
    @photograph = Photograph.new(photograph_params)
    authorize @photograph
    @photograph.gallery = gallery

    if @photograph.save
      redirect_to root_path
    else
      redirect_to new_photograph_path
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def photograph_params
    params.require(:photograph).permit(:title, :photo)
  end
end
