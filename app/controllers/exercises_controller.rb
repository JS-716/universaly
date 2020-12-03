class ExercisesController < ApplicationController
  def index
    # @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.user = current_user
    if @exercise.valid?
      if @exercise.words_count > @exercise.category.words.size
        flash[:alert] = "Mmh 🤔 seulement #{@exercise.category.words.size} flashcards disponibles dans cette catégory. "
        render :new
      else
        @exercise.save
        wordslist = @exercise.category.words.shuffle
        words = wordslist[0..@exercise.words_count]
        words.each do |word|
          Flashcard.create(word: word, exercise: @exercise)
        end
        redirect_to exercise_flashcard_path(@exercise, @exercise.flashcards.first)
      end
    else
      render :new
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:words_count, :category_id)
  end
end
