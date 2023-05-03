# == Schema Information
#
# Table name: word_means
#
#  id          :bigint           not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  word_id     :bigint           not null
#
# Indexes
#
#  index_word_means_on_word_id  (word_id)
#
# Foreign Keys
#
#  fk_rails_...  (word_id => words.id)
#
class WordMean < ApplicationRecord
  belongs_to :word
end
