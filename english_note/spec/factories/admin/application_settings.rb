# == Schema Information
#
# Table name: admin_application_settings
#
#  id                    :bigint           not null, primary key
#  allow_create_new_user :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
FactoryBot.define do
  factory :admin_application_setting, class: 'Admin::ApplicationSetting' do
    allow_create_new_user { false }
  end
end
