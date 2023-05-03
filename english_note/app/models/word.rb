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
#  index_words_on_study_event_id    (study_event_id)
#  index_words_on_user_id           (user_id)
#  index_words_on_user_id_and_name  (user_id,name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (study_event_id => study_events.id)
#  fk_rails_...  (user_id => users.id)
#
class Word < ApplicationRecord
  WORD_CLASS = { noun: 0, verb: 1, adjective: 2, adverb: 3, preposition: 4, conjunction: 5, interjection: 6 }

  belongs_to :user
  belongs_to :study_event

  has_many :word_means, dependent: :destroy

  enum :word_class, WORD_CLASS

  validates :name, presence: true
  validates :word_class, presence: true, inclusion: { in: WORD_CLASS.keys.map(&:to_s) }
  validates :study_event_id, presence: true
end
