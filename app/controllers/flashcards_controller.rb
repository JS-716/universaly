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
      redirect_to exercise_flashcards_path(params[:exercise_id])
    else
      next_index = @exercise_flashcards.index(@flashcard) + 1
      @next_flashcard = @exercise_flashcards[next_index]
    end
  end

   #faire un form de flashcards sur l'index avec les champs suivants (fake edit)
    #requested_position + translated_position pour une flashcard
      #2 colonnes 
      #colonne 1 : itération sur flashcards + order_by/sort_by par request_position + afficher le mot requested sous forme de btn (on utilise du CCS avec hover pr faire croire que c'est un btn)
         #qd on cliquera dessus, du js viendra remplir notre form caché avec la requested_position (data-position = en erb à flashcard.requested_position)
         #récupérer l'input du form
         #récupérer dans un tableau, tous les btns de la 1ère colonne (querySelectorAll)
         #itérer sur ce tableau avec un foreach
            # mettre un listenner sur chaque btn
            #au clic, récupérer le dataset.position et l'injecter dans l'input avec innerHTML
      #colonne 2 : itération sur flashcards + order_by/sort_by par translated_position + afficher le mot translated
        #idem
        #soumettre le form
    #à la dernière étape, cacher ce form, div avec d-none (pour faire disparaitre)

  def index
   @flashcard = Flashcard.new
   @exercise = Exercise.find(params[:exercise_id])

   @flashcards = @exercise.flashcards[0...@exercise.words_count]

  end

  def create
     #fake update
      #regarder si requested_position de form = requested position de flashcard
      #si oui, matching de flashcard = true sinon on ne fait rien
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

