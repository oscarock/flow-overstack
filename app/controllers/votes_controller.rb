class VotesController < ApplicationController
  def addVoteQuestion
    if Vote.exists?(direction: "arriba", voteable_type: "Question", user_id: current_user.id)
      flash.alert = "No puedes Votar mas de 1 vez por pregunta."
    else
      voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
      @vote = voteable.votes.create(direction: 'arriba', user_id: current_user.id)
      flash.notice = "Voto Agregado Corractamente."
    end
    redirect_to question_path(params[:id])
  end

  def addVoteAnswer
    if Vote.exists?(direction: "arriba", voteable_type: "Answer", user_id: current_user.id)
      flash.alert = "No puedes Votar mas de 1 vez por pregunta"
    else
      voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
      @vote = voteable.votes.create(direction: 'arriba', user_id: current_user.id)
      flash.notice = "Voto Agregado Corractamente."
    end
    redirect_to question_path(params[:id])
  end

  def removeVoteQuestion
    if Vote.exists?(direction: "abajo", voteable_type: "Question", user_id: current_user.id)
      flash.alert = "No puedes Votar mas de 1 vez por respuesta"
    else
      voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
      @vote = voteable.votes.create(direction: 'abajo', user_id: current_user.id)
      flash.notice = "Voto Agregado Corractamente."
    end
    redirect_to question_path(params[:id])
  end

  def removeVoteAnswer
    if Vote.exists?(direction: "abajo", voteable_type: "Answer", user_id: current_user.id)
      flash.alert = "No puedes Votar mas de 1 vez por respuesta"
    else
      voteable = params[:voteable].classify.constantize.find(params[:voteable_id])
      @vote = voteable.votes.create(direction: 'abajo', user_id: current_user.id)
      flash.notice = "Voto Agregado Corractamente."
    end
    redirect_to question_path(params[:id])
  end
end
