class AddFirstNameLastNameToGeneralProfile < ActiveRecord::Migration
  def change
    add_column :general_profiles, :first_name, :string

    add_column :general_profiles, :last_name, :string

  end
end
