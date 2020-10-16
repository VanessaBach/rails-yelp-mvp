class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }
  validates :content, :rating, presence: true
  validates_inclusion_of :rating, in: [0, 1, 2, 3, 4, 5]
end
