class AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    @answers = question.answers.new(answer_params)
    if @answers.save
      redirect_to questions_path(params[:question_id]), :notice => "Respuesta guardada"
    else
      @errors = @answers.errors.full_messages
      redirect_to questions_path(params[:question_id]), :alert => @errors
      # render questions_path(question)
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:content)
    end
end
