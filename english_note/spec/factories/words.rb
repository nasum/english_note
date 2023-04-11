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
FactoryBot.define do
  factory :word do
    name { "MyString" }
    word_class { 1 }
  end
end
