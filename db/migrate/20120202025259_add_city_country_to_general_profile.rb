class AddCityCountryToGeneralProfile < ActiveRecord::Migration
  def change
    add_column :general_profiles, :location, :string

    add_column :general_profiles, :latitude, :float

    add_column :general_profiles, :longitude, :float

  end
end
