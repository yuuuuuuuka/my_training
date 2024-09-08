class Record < ApplicationRecord
  belongs_to :user
  belongs_to :exercise

  validates :date, presence: { message: '運動を行った日付を入力してください。' }
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: '運動時間は0分以上の整数値を入力してください。' }
  validates :reps, numericality: { only_integer: true, greater_than: 0, message: '回数は1回以上の整数値を入力してください。' }
end
