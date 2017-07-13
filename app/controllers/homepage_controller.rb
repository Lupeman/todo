class HomepageController < ApplicationController
  def show
      @items = Item.all.reverse
  end
end
