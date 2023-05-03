class AddIndexToWord < ActiveRecord::Migration[7.0]
  def change
    add_index :words, [:user_id, :name], unique: true
  end
end
