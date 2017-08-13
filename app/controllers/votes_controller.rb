class VotesController < ApplicationController
  def addVote
    puts "ENTRE!!!!!"
    puts params[:id]
    puts params[:voteable]
    puts params[:voteable_id]
    voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
    @vote = voteable.votes.create()
    # question = Question.find(params[:id])
    # @vote = question.votes.create()
    redirect_to question_path(params[:id])
  end


  def removeVote
    puts "ENTRE!!!"
    question = Question.find(params[:id])
    @vote = question.votes
    redirect_to question_path(params[:id])
  end
end
