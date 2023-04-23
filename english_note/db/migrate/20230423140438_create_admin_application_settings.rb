class CreateAdminApplicationSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_application_settings do |t|
      t.boolean :allow_create_new_user

      t.timestamps
    end
  end
end
