require 'spec_helper'

describe CommentsController do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:movie) { FactoryGirl.create(:movie) }
  let!(:comment_attributes) { FactoryGirl.attributes_for(:comment, user: user, movie: movie) }
  
  before { sign_in(user) }

  describe 'Post#create' do
    it 'creates a new comment' do
      expect {
        post :create, params: { movie: { id: movie } }, comment: comment_attributes
      }.to change(Comment, :count).by(1)
    end

    it 'redirects to movies path' do
      post :create, params: { movie: { id: movie } }, comment: comment_attributes
      response.should redirect_to movies_path
    end
  end
end
