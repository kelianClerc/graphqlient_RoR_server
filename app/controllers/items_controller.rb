class ItemsController < ApplicationController
  def index
    if params[:action_id]
      @actions = Item.where("action_id = ?", params[:action_id])
    else
      @actions = Item.all
    end
    render json: @actions

  end

  def show
    @action = Item.find(params[:id])
    render json: @action, serializer: ItemSerializer
  end
end
