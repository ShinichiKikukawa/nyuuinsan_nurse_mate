class Task < ApplicationRecord

  default_scope -> { order(created_at: :desc) }

  belongs_to :user
  has_one_attached :avatar

  validates :user_id, presence: true
  validates :name, length: { maximum: 10000 }
  validates :company, presence: true, length: { maximum: 10000 }
  validates :description, length: { maximum: 50000 }

end
