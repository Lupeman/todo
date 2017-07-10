class HomepageController < ApplicationController
  def show
      @items = Item.all
  end
end
