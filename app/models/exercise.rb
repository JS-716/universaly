class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :flashcards

  validates :words_count, presence: true
end
