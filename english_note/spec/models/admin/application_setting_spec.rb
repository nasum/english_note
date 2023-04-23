# == Schema Information
#
# Table name: admin_application_settings
#
#  id                    :bigint           not null, primary key
#  allow_create_new_user :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
require 'rails_helper'

RSpec.describe Admin::ApplicationSetting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
