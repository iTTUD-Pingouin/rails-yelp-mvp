class Restaurant < ApplicationRecord
  #association
  has_many :reviews, dependent: :destroy
  #validation
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
