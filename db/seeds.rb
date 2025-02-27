# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 100.times do
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: 'password'
#   )

#   profile = user.build_profile(
#     nickname: Faker::Name.name,
#     course: rand(1..15),
#     area: rand(1..47),
#     gender: rand(0..2),
#     birthday: Faker::Date.birthday(min_age: 6, max_age: 120),
#     introduction: Faker::Lorem.paragraph
#   )
#   profile.save!
# end

(1..25).each do |day|
  StudyRecord.create(user_id: 101, study_date: Date.new(2025, 2, day))
end
