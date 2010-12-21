module Comments
    class CommentsController < ApplicationController
      def index
        @comments = Comment.all
      end
      
      def new
        @comment = Comment.new
      end
      
      def create
        @comment = Comment.new(params[:comment])
        if @comment.save
          flash[:notice] = "Successfully created comment."
          redirect_to comments_path
        else
          render :action => 'new'
        end
      end

    end
end
