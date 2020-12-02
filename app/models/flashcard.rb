class Flashcard < ApplicationRecord
  belongs_to :exercise
  belongs_to :word
  
  #once the new exercise form is sent, an exo is created and flashcards#create is triggered
    #when flashcards#create is triggered, the method define_positions is automatically applied
  after_create :define_positions

  def define_positions
   #retrouver les positions des autres flashcards
   #donner une nouvelle position aléatoire à cette flashcard avec les positions restantes

   #self is an instance of flashcard
   #self.exercise is an instance of exercise
   words_count = self.exercise.words_count
   
   #self.exercise.flashcards gives an array of flashcards
   # .map(&:requested_position) created an array made of positions
   selected_requested_positions = self.exercise.flashcards.map(&:requested_position)
   available_requested_positions = (0..words_count).to_a - selected_requested_positions
   self.requested_position = available_requested_positions.sample

   selected_translated_positions = self.exercise.flashcards.map(&:translated_position)
   available_translated_positions = (0..words_count).to_a - selected_translated_positions
   self.translated_position = available_translated_positions.sample
 
   
   self.save
  end
end
