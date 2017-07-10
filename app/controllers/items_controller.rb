class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, :notice => 'Item added!'
    else
      render action: :new
    end
  end

  def index
    @item = Item.all
  end


  private

  def item_params
    params.require(:item).permit(:description)
  end
end
