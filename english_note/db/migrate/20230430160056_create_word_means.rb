class CreateWordMeans < ActiveRecord::Migration[7.0]
  def change
    create_table :word_means do |t|
      t.references :word, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
