class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.boolean :matching
      t.integer :requested_position
      t.integer :translated_position
      t.references :exercise, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
