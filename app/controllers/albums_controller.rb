class AlbumsController < ApplicationController
  def index
    @albums = Album.order('created_at DESC')
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:success] = "Album was created!"
      redirect_to albums_path
    else
      render :new
    end
  end

  private

  def album_params
    params.require(:album).permit(:title)
  end
end