class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, :notice => 'Item added!'
    else
      render action: :new
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path, :notice => 'Item has been successfully deleted!'
  end

  private

  def item_params
    params.require(:item).permit(:description)
  end
end
