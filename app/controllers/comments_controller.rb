class CommentsController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    @comments = question.comments.new(comment_params)
    if @comments.save
      redirect_to questions_path
    else
      render questions_path(question)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:title)
    end
end
