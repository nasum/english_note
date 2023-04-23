# == Schema Information
#
# Table name: words
#
#  id             :bigint           not null, primary key
#  name           :string
#  word_class     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  study_event_id :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_words_on_study_event_id  (study_event_id)
#  index_words_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (study_event_id => study_events.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :word do
    name { 'MyString' }
    word_class { 1 }
  end
end
