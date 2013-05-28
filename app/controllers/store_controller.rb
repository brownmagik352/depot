class StoreController < ApplicationController
  def index
		@products = Product.order(:title) #list products in alphabetic order
  end
end
