class Admin::GenresController < ApplicationController

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = ""
      redirect_to admin_genres_path
    else
      render :index
    end
  end

  def index
    @genres = Genre.all
  end

  def edit
    
  end

  def update
    
  end
  
  private

  def genre_params
    params.permit(:name)
  end

end
