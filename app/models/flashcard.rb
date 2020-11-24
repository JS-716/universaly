class Flashcard < ApplicationRecord
  belongs_to :session
  belongs_to :word
  
end
