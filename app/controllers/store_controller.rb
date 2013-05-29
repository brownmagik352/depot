class StoreController < ApplicationController
  def index
		@products = Product.order(:title) #list products in alphabetic order
 		@count = counter
 		@shown_message = "You have been here #{@count} times" if session[:count] > 5
  end

  def counter
  	session[:count] ||=1
  	session[:count] +=1
  end

end
