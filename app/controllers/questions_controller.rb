class QuestionsController < ApplicationController
  def index
    @questions = if params[:search]
      Question.where('title LIKE ?',"%#{params[:search]}%")
      .where('content LIKE ?',"%#{params[:search]}%")
    else
      @questions = Question.where(user_id: current_user.id)
    end
  end

  def question_all
    @questions = Question.all
    render action: 'question_all', locals: { questions: @questions }
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path, :notice => "Pregunta guardada"
    else
      @errors = @question.errors.full_messages
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @comment = Comment.new
    @answer = Answer.new
  end

  private
    def question_params
      params.require(:question).permit(:title, :content).merge(user_id: current_user.id)
    end

end
