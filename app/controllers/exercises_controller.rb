class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @category = Category.find(params[:exercise][:category])
    # [:exercise][:category] clé du hash
    @exercise.category = @category
    # permet de mettre en lien exercice et category
    @exercise.user = current_user
    # pour récupérer le curent user de l'exercice
    if @exercise.save
      @exercise.words_count.times do
        # .times joue le bloc en fonction du nombre de flashcard .words_count
        word = @category.words.sample
        # reflechir comment ameliorer la logique, eviter les doublons
        Flashcard.create(word: word, exercise: @exercise)
      end
      redirect_to exercise_flashcard_path(@exercise, @exercise.flashcards.first)
    else
      render :new
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:words_count)
  end
end
