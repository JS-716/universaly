class ChangeColumnToWords < ActiveRecord::Migration[6.0]
  def change
    change_column :words, :favorite, :boolean, :default => false
  end
end
