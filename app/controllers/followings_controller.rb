class FollowingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @account = User.find(params[:account_id])
    @followings = @account.followings
  end
end
