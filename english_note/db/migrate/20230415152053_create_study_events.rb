class CreateStudyEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :study_events do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :study_event_type

      t.timestamps
    end
  end
end
