class CommentsController < ApplicationController
  def create
    commentable = params[:comment][:commentable].classify.constantize.find(params[:comment][:commentable_id])
    @comments = commentable.comments.new(comment_params)
    if @comments.save
      redirect_to question_path(params[:comment][:commentable_id]), :notice => "Comentario guardado"
    else
      @errors = @comments.errors.full_messages
      redirect_to question_path(params[:comment][:commentable_id]), :alert => @errors
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:title)
    end
end
