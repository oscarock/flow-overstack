class AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    @answers = question.answers.new(answer_params)
    if @answers.save
      redirect_to questions_path
    else
      @errors = @comments.errors.full_messages
      redirect_to questions_path(question)
      # render questions_path(question)
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:content)
    end
end
