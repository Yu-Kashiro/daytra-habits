# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 作成人数
number_of_times = 10

# ユーザーおよびプロフィールを作成
number_of_times.times do
  user = User.create!(
    email: "test#{User.count + 1}@test.com",
    password: 'password'
  )

  profile = user.build_profile(
    nickname: Faker::JapaneseMedia::Naruto.character,
    course: rand(0..9),
    area: rand(0..46),
    gender: rand(0..2),
    birthday: Faker::Date.birthday(min_age: 6, max_age: 120),
    introduction: Faker::Lorem.paragraph
  )
  profile.save!

  # 学習記録を作成
  # （開始日）
  start_date = Date.new(2024, 10, 3)
  # （終了日）
  end_date = Date.yesterday

  # 連続した学習記録を作成する場合
  (start_date..end_date).each do |date|
    StudyRecord.create(user_id: user.id, study_date: date)
  end

  # ランダムな日付で学習記録を作成する場合はこちら（上記のeach文をコメントアウト、このeach文をコメントイン）
  # (start_date..end_date).each do |date|
  #   if rand < 0.5
  #     StudyRecord.create(user_id: user.id, study_date: date)
  #   end
  # end

end

# User全員が5人ずつフォローする
users = User.all
users.each do |user|
  other_users = users.where.not(id: user.id).sample(5)
  other_users.each do |other_user|
    user.follow!(other_user)
  end
end
