class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = Profile.all

    if params[:course].present?
      @profiles = Profile.where(course: params[:course])
    end

    if params[:area].present?
      @profiles = @profiles.where(area: params[:area])
    end

    @users = User.where(id: @profiles.pluck(:user_id))
  end

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
    if @user == current_user
      redirect_to profile_path
    end
  end
end
