# == Schema Information
#
# Table name: journals
#
#  id             :bigint           not null, primary key
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  study_event_id :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_journals_on_study_event_id  (study_event_id)
#  index_journals_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (study_event_id => study_events.id)
#  fk_rails_...  (user_id => users.id)
#
class Journal < ApplicationRecord
  belongs_to :user
  belongs_to :study_event
  has_rich_text :content
end
