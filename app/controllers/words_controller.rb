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
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
    # project_id = ENV["CLOUD_PROJECT_ID"]
    # translate = Google::Cloud::Translate.new project: project_id
    # @text = params[:search][:word]
    # target = "fr"
    # @translation = translate.translate text, to: target
    #puts "Text: #{text}"
    #puts "Translation: #{translation}"
  end

  def create
  end
end
