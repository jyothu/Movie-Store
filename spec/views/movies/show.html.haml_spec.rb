require 'spec_helper'

RSpec.describe 'movies/show' do
  it 'displays the movie with id' do
    movie = Movie.create!(name: 'movie1', release_date: '01/02/2019', short_description: 'A specific movie', genre: 'Action', age_bar: 3)
    controller.extra_params = { id: movie.id }
    expect(controller.request.fullpath).to eq "/movies/#{movie.id}"
  end
end
