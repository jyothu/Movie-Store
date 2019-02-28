require 'spec_helper'

describe MoviesController do
  describe 'GET #index' do
    it 'populates an array of movies' do
      movie = FactoryGirl.create(:movie)
      get :index
      assigns(:movies).should eq([movie])
    end

    it 'renders the :index view' do
      get :index
      response.should render_template :index
    end
  end

  describe 'GET #show' do
    it 'assigns the requested movie to @movie' do
      movie = FactoryGirl.create(:movie)
      get :show, id: movie
      assigns(:movie).should eq(movie)
    end

    it 'renders the :show template' do
      get :show, id: FactoryGirl.create(:movie)
      response.should render_template :show
    end
  end
end
