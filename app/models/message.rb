class Message < ApplicationRecord
  
  belongs_to :room
  belongs_to :user
  
  has_one_attached :image

  validates :content, presence: true
  # 空の場合はDBに保存しないというバリデーションを設定

end
