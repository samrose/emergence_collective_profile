class AddIntentcastToGeneralProfile < ActiveRecord::Migration
  def change
    add_column :general_profiles, :intentcast, :text

  end
end
