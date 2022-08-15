class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  def create
    current_user.items.create!(item_params)
  end

  # ***** 以下を追記 *****
  private

  def item_params
    params.require(:item).permit(:name, :price)
  end

  # ***** 以上を追記 *****
end
