class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :word_requested
      t.string :word_translated
      t.string :language_requested
      t.string :language_translated
      t.text :context_details
      t.string :progress
      t.boolean :favorite
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
