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

class Profile < ApplicationRecord
  enum :gender, { male: 0, female: 1, other: 2 }

  enum :course, {
    web_production: 0,
    web_design: 1,
    web_application_development: 2,
    shopify: 3,
    video_editing: 4,
    python: 5,
    drone: 6,
    writing: 7,
    java: 8,
    line_automation: 9
  }

  enum :area, {
    hokkaido: 0,
    aomori: 1,
    iwate: 2,
    miyagi: 3,
    akita: 4,
    yamagata: 5,
    fukushima: 6,
    ibaraki: 7,
    tochigi: 8,
    gunma: 9,
    saitama: 10,
    chiba: 11,
    tokyo: 12,
    kanagawa: 13,
    niigata: 14,
    toyama: 15,
    ishikawa: 16,
    fukui: 17,
    yamanashi: 18,
    nagano: 19,
    gifu: 20,
    shizuoka: 21,
    aichi: 22,
    mie: 23,
    shiga: 24,
    kyoto: 25,
    osaka: 26,
    hyogo: 27,
    nara: 28,
    wakayama: 29,
    tottori: 30,
    shimane: 31,
    okayama: 32,
    hiroshima: 33,
    yamaguchi: 34,
    tokushima: 35,
    kagawa: 36,
    ehime: 37,
    kochi: 38,
    fukuoka: 39,
    saga: 40,
    nagasaki: 41,
    kumamoto: 42,
    oita: 43,
    miyazaki: 44,
    kagoshima: 45,
    okinawa: 46
  }

  belongs_to :user
end
