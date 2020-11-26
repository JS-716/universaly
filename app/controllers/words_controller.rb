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

     # if params[:search].present? && params[:search][:favorite].present?
     #   sql_query = "favorite: :query4"
     #   @words = @words.where(sql_query, query4: "%#{params[:search][:favorite]}%")
     # end
    end

  def show
    @word = Word.find(params[:id])
  end
end
