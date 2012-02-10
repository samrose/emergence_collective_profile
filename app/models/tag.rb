class Tag < ActiveRecord::Base
  has_many :interest_taggings, :dependent => :destroy
  has_many :general_profiles, :through => :interest_taggings
end
