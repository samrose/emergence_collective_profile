class CreateInterestTaggings < ActiveRecord::Migration
  def change
    create_table :interest_taggings do |t|
      t.integer :general_profile_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
