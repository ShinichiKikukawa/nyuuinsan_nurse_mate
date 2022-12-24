class Store < ApplicationRecord
default_scope -> { order(created_at: :desc) }
 
  belongs_to :user
  
  validates :company, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :address, presence: true, length: { maximum: 200 }
  validates :tel, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { in: 1..1000 }
end
