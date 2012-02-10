class AddUserToGeneralProfile < ActiveRecord::Migration
  def change
    add_column :general_profiles, :user_id, :integer

  end
end
