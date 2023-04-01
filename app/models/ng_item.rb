class NgItem < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
 
  belongs_to :user
  
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 10000 }
  validates :company, presence: true, length: { maximum: 10000 }
  validates :description, presence: true, length: { in: 1..50000 }

end
