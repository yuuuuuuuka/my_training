class Exercise < ApplicationRecord
  has_many :record

  validates :name, presence: { message: '名前を入力してください' }, length: { minimum: 2, maximum: 50 }
  validates :description, presence: { message: '頑張った自分に向けてメッセージを書いてください' }, length: { maximum: 200 }
end
