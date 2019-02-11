class MoviesController < ApplicationController

    def new 
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        if @article.save
            flash[:notice] = "Movie was successfully created"
            redirect_to movie_path(@movie)
        else
            render 'new'
        end
    end

    private 

    def movie_params
        params.require(:movie).permit(:movie_name, :release_date, :small_description, :description, :genre, :recommended?, :age_bar, :wallpaper, :comments)
    end
end
