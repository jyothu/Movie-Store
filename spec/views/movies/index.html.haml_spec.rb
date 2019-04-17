require 'spec_helper'

RSpec.describe 'movies/index' do
  it 'has a request.fullpath that is defined' do
    expect(controller.request.fullpath).to eq root_path
  end
  
  it 'has a sign in button' do
    visit('/movies')
    expect(page).to have_button('Sign in')
  end

  it 'has a title' do
    visit('/movies')
    page.should have_content('Movie Store')
  end

  it 'displays all the movies' do
    assign(:movies,
    [
      Movie.create!(name: 'slicer', release_date: '01/02/2019', short_description: 'A specific movie', genre: 'Action', age_bar: 3),
      Movie.create!(name: 'dicer', release_date: '01/02/2019', short_description: 'A specific movie', genre: 'Action', age_bar: 3)
    ])

    render

    expect(rendered).to match /slicer/
    expect(rendered).to match /dicer/
  end
end
