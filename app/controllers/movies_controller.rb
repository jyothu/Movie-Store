# Controller for displaying movies in the index page.
# Movie controller
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @stars = @movie.stars
    @comments = @movie.comments
  end
end
