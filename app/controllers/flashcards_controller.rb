class FlashcardsController < ApplicationController
  def show
    # recuperation des id des flashcards
    @flashcard = Flashcard.find(params[:id])
    @exercise = Exercise.find(params[:exercise_id])
    # avoir toutes les flashcards de l'exercice en cours
    @exercise_flashcards = @exercise.flashcards
    next_index = @exercise_flashcards.index(@flashcard) + 1
    previous_index = @exercise_flashcards.index(@flashcard) - 1
    @next_flashcard = @exercise_flashcards[next_index]
    @previous_flashcard = @exercise_flashcards[previous_index]
  end

  def create
  end
end
