class WordsController < ApplicationController
  def index
    if params[:query1].present?
      sql_query = "word_requested ILIKE :query1 OR word_translated ILIKE :query1 OR context_details ILIKE :query1"
      @words = Word.where(sql_query, query1: "%#{params[:query1]}%")
    elsif params[:query2].present?
      sql_query = "categories.name ILIKE :query2"
      @words = Word.joins(:category).where(sql_query, query2: "%#{params[:query2]}%")
    elsif params[:query3].present?
      sql_query = "progress ILIKE :query3"
      @words = Word.where(sql_query, query3: "%#{params[:query3]}%")
    elsif params[:query4].present?
      sql_query = "favorite ILIKE :query4"
      @words = Word.where(sql_query, query4: "%#{params[:query4]}%")
    else
      @words = Word.all
    end
  end

  def show
    @word = Word.find(params[:id])
  end
end
