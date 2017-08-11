class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      @errors = @question.errors.full_messages
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @comment = Comment.new
  end

  private
    def question_params
      params.require(:question).permit(:title, :content).merge(user_id: current_user.id)
    end

end
