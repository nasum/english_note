# == Schema Information
#
# Table name: words
#
#  id         :bigint           not null, primary key
#  name       :string
#  word_class :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
require 'rails_helper'

RSpec.describe Word, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
