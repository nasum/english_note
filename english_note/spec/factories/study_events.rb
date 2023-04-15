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
FactoryBot.define do
  factory :study_event do
    user { nil }
    study_event_type { 1 }
  end
end
