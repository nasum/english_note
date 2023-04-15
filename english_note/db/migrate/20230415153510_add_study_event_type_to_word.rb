class AddStudyEventTypeToWord < ActiveRecord::Migration[7.0]
  def change
    add_reference :words, :study_event, null: false, foreign_key: true
  end
end
