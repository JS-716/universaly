class Flashcard < ApplicationRecord
  belongs_to :exercise
  belongs_to :word
  
  after_create :define_positions

  def define_positions
   words_count = self.exercise.words_count
   
   selected_requested_positions = self.exercise.flashcards.map(&:requested_position)
   available_requested_positions = (0..words_count).to_a - selected_requested_positions
   self.requested_position = available_requested_positions.sample

   selected_translated_positions = self.exercise.flashcards.map(&:translated_position)
   available_translated_positions = (0..words_count).to_a - selected_translated_positions
   self.translated_position = available_translated_positions.sample
 
   
   self.save
  end
end
