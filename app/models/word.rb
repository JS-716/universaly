class Word < ApplicationRecord
  PROGRESS = ["Nouveau", "En cours", "Appris"]
  belongs_to :user
  belongs_to :category
  has_many :flashcards
end
