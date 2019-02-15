class CommentsController < ApplicationController
   before_action :authenticate_user!

    def new 
        @comment = Comment.new
        email=session[:user]
        puts "#{email}"
        if email.blank?
          redirect_to new_user_session_path
        end
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.movie_id = params[:movie][:id]
        @comment.save
        puts "Comments--------------#{@comment.review}"
        puts "Comments--------------#{@comment.movie_id}"
        puts "Comments--------------#{@comment.user_id}"
        flash[:notice] = "Comment was successfully submitted"
    end

    private 
    def comment_params
      params.permit(:user_id, :movie_id, :review)
    end
end