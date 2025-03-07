# == Schema Information
#
# Table name: relationships
#
#  id           :integer          not null, primary key
#  following_id :integer          not null
#  follower_id  :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_relationships_on_follower_id   (follower_id)
#  index_relationships_on_following_id  (following_id)
#

class Relationship < ApplicationRecord
  belongs_to :following, class_name: 'User'
  belongs_to :follower, class_name: 'User'
end
