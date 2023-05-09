class NgItem < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  belongs_to :user
  has_one_attached :avatar

  validates :user_id, presence: true
  validates :company, length: { maximum: 10000 }

end
