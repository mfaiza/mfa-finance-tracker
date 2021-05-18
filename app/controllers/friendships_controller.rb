class FriendshipsController < ApplicationController
  def create
  	friend = User.find(params[:friend])
  	current_user.friendships.build(friend_id: friend.id)
  	if current_user.save
  		flash[:notice] = "Following User"
  	else
  		flash[:alert] = 'There was something error when tracking friendship'
  	end
  	redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Stopped Following"
    redirect_to my_friends_path
  end
end
