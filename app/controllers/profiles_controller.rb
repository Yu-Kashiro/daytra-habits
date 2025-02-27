class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.prepare_profile
  end

  def edit
    @profile = current_user.prepare_profile
  end

  def update
    @profile = current_user.prepare_profile
    if @profile.update(profile_params)
      redirect_to profile_path, notice: 'プロフィールを更新しました'
    else
      render :edit, notice: 'プロフィールの更新に失敗しました'
    end
  end

  private
  def profile_params
    params.require(:profile).permit(
      :nickname,
      :course,
      :area,
      :gender,
      :birthday,
      :introduction
      )
  end
end
