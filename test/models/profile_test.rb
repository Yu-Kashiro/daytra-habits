# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  nickname     :string           not null
#  course       :integer          not null
#  area         :integer          not null
#  gender       :integer          not null
#  birthday     :date             not null
#  introduction :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
