class CreateGeneralProfiles < ActiveRecord::Migration
  def change
    create_table :general_profiles do |t|
      t.text :about_yourself
      t.string :whereareyou
      t.text :heartsong
      t.text :your_projects
      t.text :superpowers
      t.text :strengths

      t.timestamps
    end
  end
end
