class VotesController < ApplicationController
  def addVote
    voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
    @vote = voteable.votes.create()
    redirect_to question_path(params[:id])

    # if session[:vote_count] == nil
    #     voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
    #     @vote = voteable.votes.create()
    #     session[:vote_count] = true
    # end
  end

  def removeVote
    voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
    @vote = voteable.votes.last.destroy()
    redirect_to question_path(params[:id])
  end
end
