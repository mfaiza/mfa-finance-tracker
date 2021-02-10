class UsersController < ApplicationController
  def portfolio
  	@trackedStocks = current_user.stocks
  end
end
