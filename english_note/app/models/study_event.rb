# == Schema Information
#
# Table name: study_events
#
#  id               :bigint           not null, primary key
#  study_event_type :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_study_events_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class StudyEvent < ApplicationRecord
  STUDY_EVNENT_TYPE = { word: 0 }
  belongs_to :user
  has_one :word

  enum :study_event_type, STUDY_EVNENT_TYPE
end
