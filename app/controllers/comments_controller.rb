class CommentsController < ApplicationController
  def create
    # question = Question.find(params[:question_id])
    commentable = params[:comment][:commentable].classify.constantize.find(params[:comment][:commentable_id])
    @comments = commentable.comments.new(comment_params)
    if @comments.save
      redirect_to question_path(params[:comment][:commentable_id])
    else
      @errors = @comments.errors.full_messages
      # render :show
      redirect_to question_path(params[:comment][:commentable_id])
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:title)
    end
end
