class Word < ApplicationRecord
  PROGRESS = ["Nouveau", "En cours", "Appris"]
  belongs_to :user
  belongs_to :category
  has_many :flashcards

  def nouveau?
    @progress == "Nouveau"
  end

  def en_cours?
    @progress == "En cours"
  end

  def appris?
    @progress == "Appris"
  end
end
