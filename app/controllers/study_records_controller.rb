class StudyRecordsController < ApplicationController
  before_action :authenticate_user!

  def index
    start_date = Date.today
    @study_records = current_user.study_records
                                 .where(study_date: start_date.beginning_of_month..start_date.end_of_month)
                                 .order(study_date: :desc)
    @period = number_of_running_days
    @total_days = current_user.study_records.count
  end

  def create
    today = Date.today
    if current_user.study_records.exists?(study_date: today)
      flash[:alert] = "今日の学習はすでに記録されています。"
    else
      StudyRecord.create(study_date: today, user_id: current_user.id)
      flash[:notice] = "学習記録を追加しました！"
    end
    redirect_to study_records_path
  end

  private

  def number_of_running_days
    records = current_user.study_records.order(study_date: :desc).pluck(:study_date)
    if records.empty?
      return 0
    end

    period = 0
    current_date = Date.today

    records.each do |date|
      if date == current_date
        period = period + 1
      elsif date == current_date - 1
        period = period + 1
        current_date = current_date - 1
      else
        break
      end
    end
    period
  end

end
