class Flashcard < ApplicationRecord
  belongs_to :exercise
  belongs_to :word
  
end
