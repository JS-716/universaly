class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @category = Category.find(params[:exercise][:category])
    @exercise.category = @category
    @exercise.user = current_user
    if @exercise.save
      @exercise.words_count.times do
        word = @category.words.sample
        # reflechir comment ameliorer la logique, eviter les doublons
        Flashcard.create(word: word, exercise: @exercise)
      end
      redirect_to exercise_flashcard_path(@exercise, @exercise.flashcards.first)
    else
      render :new
    end
  end

  # respond_to do |format|
  #   if @article.save
  #     format.html { redirect_to([@magazine,@article], :notice => 'Article was successfully created.') }
  #     format.xml  { render :xml => @article, :status => :created, :location => @article }
  #   else
  #     format.html { render :action => "new" }
  #     format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
  #   end
  # end

  private

  def exercise_params
    params.require(:exercise).permit(:words_count)
  end
end
