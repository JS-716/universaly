class FlashcardsController < ApplicationController
  def show
    # get all flashcards' ids
    @flashcard = Flashcard.find(params[:id])
    @exercise = Exercise.find(params[:exercise_id])
    # get all flashcards from the exercise session
    @exercise_flashcards = @exercise.flashcards
    # previous button
    if @exercise_flashcards.index(@flashcard) == 0
      previous_index = @exercise_flashcards.index(@flashcard)
      @previous_flashcard = @exercise_flashcards[previous_index]
    else
      previous_index = @exercise_flashcards.index(@flashcard) - 1
      @previous_flashcard = @exercise_flashcards[previous_index]
    end
    # next button
    if @flashcard.id ==  @exercise_flashcards[-1].id
      redirect_to exercise_flashcards_path(params[:exercise_id])
    else
      next_index = @exercise_flashcards.index(@flashcard) + 1
      @next_flashcard = @exercise_flashcards[next_index]
    end
  end

  def index
   @flashcard = Flashcard.new
   @exercise = Exercise.find(params[:exercise_id])

   @flashcards = @exercise.flashcards[0...@exercise.words_count]

  end

  def create
     # emulate an update action
      # check if form's requested_position == flashcard's requested position
      # if yes, matching de flashcard == true
   @exercise = Exercise.find(params[:exercise_id])

   @flashcard = @exercise.flashcards.find_by(flashcard_params)
   if @flashcard
    @flashcard.matching = true
    @flashcard.save
   end
   redirect_to exercise_flashcards_path(@exercise)
  end

  private
  def flashcard_params
   params.require(:flashcard).permit(:requested_position, :translated_position, :matching, :exercise_id, :word_id )
  end
    
end

