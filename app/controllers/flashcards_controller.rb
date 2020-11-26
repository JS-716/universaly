class FlashcardsController < ApplicationController
  def show
    # recuperation des id des flashcards
    @flashcard = Flashcard.find(params[:id])
    @exercise = Exercise.find(params[:exercise_id])
    # avoir toutes les flashcards de l'exercice en cours
    @exercise_flashcards = @exercise.flashcards
    # bouton previous
    if @exercise_flashcards.index(@flashcard) == 0
      previous_index = @exercise_flashcards.index(@flashcard)
      @previous_flashcard = @exercise_flashcards[previous_index]
    else
      previous_index = @exercise_flashcards.index(@flashcard) - 1
      @previous_flashcard = @exercise_flashcards[previous_index]
    end
    # bouton next
    if @flashcard.id ==  @exercise_flashcards[-1].id
      next_index = @exercise_flashcards.index(@flashcard)
      @next_flashcard = @exercise_flashcards[next_index]
    else
      next_index = @exercise_flashcards.index(@flashcard) + 1
      @next_flashcard = @exercise_flashcards[next_index]
    end
  end

  # def show
  #   # recuperation des id des flashcards
  #   @flashcard = Flashcard.find(params[:id])
  #   @exercise = Exercise.find(params[:exercise_id])
  #   # avoir toutes les flashcards de l'exercice en cours
  #   @exercise_flashcards = @exercise.flashcards
  #   # bouton previous
  #   if @exercise_flashcards.index(@flashcard) == 0
  #     previous_index = @exercise_flashcards.index(@flashcard)
  #     @previous_flashcard = @exercise_flashcards[previous_index]
  #   else
  #     previous_index = @exercise_flashcards.index(@flashcard) - 1
  #     @previous_flashcard = @exercise_flashcards[previous_index]
  #   end
  #   # bouton next
  #   if @exercise_flashcards.last.id == @exercise_flashcards[-1].id
  #     next_index = @exercise_flashcards.index(@flashcard)
  #     @next_flashcard = @exercise_flashcards[next_index]
  #   else
  #     next_index = @exercise_flashcards.index(@flashcard) + 1
  #     @next_flashcard = @exercise_flashcards[next_index]
  #   end
  # end

  def create
  end
end
