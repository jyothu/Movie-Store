class CommentsController < ApplicationController

    def new 
        @comment = Comment.new
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