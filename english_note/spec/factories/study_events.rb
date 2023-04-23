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
FactoryBot.define do
  factory :study_event do
    user { nil }
    study_event_type { 1 }
  end
end
