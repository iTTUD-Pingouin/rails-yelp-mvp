class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence:true, inclusion: { in: (0..5).to_a }, numericality: true
  # A review must have content and a rating. The
  #  rating should be a number between 0 and 5.
end
