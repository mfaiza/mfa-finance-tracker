class UsersController < ApplicationController
  def portfolio
		@trackedStocks = current_user.stocks
		@user = current_user
  end

  def my_friends
  	@friends = current_user.friends
  end

  def show
		@user = User.find(params[:id])
		@trackedStocks = @user.stocks
  end

  def search
  	if params[:friend].present?
		@friends = User.search(params[:friend])
		@friends = current_user.except_current_user(@friends)
		if @friends
			respond_to do |format|
				format.js { render partial: 'users/friend_result'}
			end
		else
			respond_to do |format|
				flash.now[:alert] = "User not found!"
				format.js { render partial: 'users/friend_result'}
			end
		end
	else
		respond_to do |format|
				flash.now[:alert] = "Please enter Name or Email user to Search!"
				format.js { render partial: 'users/friend_result'}
			end
		end
  end
end
