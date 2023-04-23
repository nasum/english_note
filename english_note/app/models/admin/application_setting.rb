# == Schema Information
#
# Table name: admin_application_settings
#
#  id                    :bigint           not null, primary key
#  allow_create_new_user :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Admin::ApplicationSetting < ApplicationRecord
end
