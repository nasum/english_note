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
require 'rails_helper'

RSpec.describe StudyEvent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
