# == Schema Information
#
# Table name: study_events
#
#  id               :bigint           not null, primary key
#  user_id          :bigint           not null
#  study_event_type :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class StudyEvent < ApplicationRecord
  STUDY_EVNENT_TYPE = { word: 0 }
  belongs_to :user
  has_one :word

  enum :study_event_type, STUDY_EVNENT_TYPE
end
