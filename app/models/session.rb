class Session < ApplicationRecord
  belongs_to :user
  has_many :flashcards

  validates :words_count, presence: true
end
