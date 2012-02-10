class AddExpertiseToGeneralProfile < ActiveRecord::Migration
  def change
    add_column :general_profiles, :expertise, :text

  end
end
