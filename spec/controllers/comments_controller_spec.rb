require 'spec_helper'

describe CommentsController do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:movie) { FactoryGirl.create(:movie) }

  before do
    sign_in user
  end

  describe "Post#create" do
    it "creates a new comment" do
      expect{
        post :create, params: { movie: { id: movie }}, comment: FactoryGirl.attributes_for(:comment, user: user, movie: movie)
      }.to change(Comment,:count).by(1)
    end
  
    it "redirects to movies path" do
      #post :create, comment: FactoryGirl.attributes_for(:comment)
      post :create, params: { movie: { id: movie }}, comment: FactoryGirl.attributes_for(:comment, user: user, movie: movie)
      response.should redirect_to movies_path
    end
  end
end
