class WordsController < ApplicationController
  def index
    @words = Word.all

    if params[:search].present? && params[:search][:word].present?
      sql_query = "word_requested ILIKE :query1 OR word_translated ILIKE :query1"
      @words = @words.where(sql_query, query1: "%#{params[:search][:word]}%")
    end

    if params[:search].present? && params[:search][:category_id].present?
      sql_query = "categories.name ILIKE :query2"
      @words = @words.joins(:category).where(sql_query, query2: "%#{Category.find(params[:search][:category_id]).name}%")
    end

    if params[:search].present? && params[:search][:progress].present?
      sql_query = "progress ILIKE :query3"
      @words = @words.where(sql_query, query3: "%#{params[:search][:progress]}%")
    end

    if params[:search].present? && params[:search][:favorite].reject{|value| value == ""}[0].present?
      @words = @words.where(favorite: params[:search][:favorite].reject{|value| value == ""}[0])
    end
  end

  def show
    @word = Word.find(params[:id])
    @words = Word.all
    # bouton previous
    if @words.index(@word) == 0
      redirect_to words_path
    else
      previous_index = @words.index(@word) - 1
      @previous_word = @words[previous_index]
    end
    # bouton next
    if @word.id ==  @words[-1].id
      redirect_to words_path
    else
      next_index = @words.index(@word) + 1
      @next_word = @words[next_index]
    end
  end

  def new
    @word = Word.new
    @categories = Category.all
  end

  def create
    @word = Word.new
    @word.word_requested = params[:word][:word_requested]
    @word.language_requested = 'EN'
    @word.language_translated = 'FR'
    @word.word_translated = DeepL.translate(@word.word_requested, @word.language_requested, @word.language_translated).text
    @word.progress = 'Nouveau'
    @word.user = current_user
    @word.category_id = params[:word][:category_id]
    if @word.save
      redirect_to word_path(@word)
    else
      render 'words/index'
    end
  end
end

# private
#   def word_params
#     # params.require(:word).permit([:word_requested, :language_requested, :language_translated, :language_requested, :word_translated])
#   end
