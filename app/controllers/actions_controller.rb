class ActionsController < ApplicationController
  def index
    @actions = Action.where("user_id = ?", params[:user_id])
    render json: @actions
  end

  def show
    @action = Action.find(params[:id])
    render json: @action
  end
end
