# == Schema Information
#
# Table name: study_records
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  study_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_study_records_on_user_id  (user_id)
#

class StudyRecord < ApplicationRecord
  belongs_to :user
end
