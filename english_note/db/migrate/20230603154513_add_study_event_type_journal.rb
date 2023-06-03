class AddStudyEventTypeJournal < ActiveRecord::Migration[7.0]
  def change
    add_reference :journals, :study_event, null: false, foreign_key: true
  end
end
