class InterestTagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :general_profile
end
