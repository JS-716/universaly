class Word < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :flashcards

end
