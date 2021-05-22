class AddDefaultToAdminBoolean < ActiveRecord::Migration[6.0]
  def change
    change_column :admins, :admin_mode, :boolean, :default => false
  end
end
