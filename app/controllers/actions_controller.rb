class ActionsController < ApplicationController
  def index
    @actions = Action.where("user_id = ?", params[:user_id])
    render json: @actions
  end

  def show
    @action = Action.find(params[:id])
    render json: @action
  end

  def new
    @action = Action.new
  end

  def edit
    @action = Action.find(params[:id])
  end

  def create
    @action = Action.new(action_params)
    if @action.save
      render json: @action
    end
  end

  def update
    @action = Action.find(params[:id])

    if @action.update(action_params)
      render json: @action
    else
      render 'edit'
    end
  end

  def destroy
    @action = Action.find(params[:id])
    @action.destroy
  end

  private
  def action_params
    params.require(:action).permit(:title)
  end
end
