class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    # creation de la session
    # creation des flashcards avec les words de la category de la session creer
    # et avec le nombre de flachcards creer
  end
end
