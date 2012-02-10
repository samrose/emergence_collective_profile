class GeneralProfile < ActiveRecord::Base
  #attr_accessible :location, :latitude, :longitude
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
  belongs_to :user
  has_many :interest_taggings, :dependent => :destroy
  has_many :tags, :through => :interest_taggings

  attr_accessor :tag_names
  after_save :assign_tags

  private
  def assign_tags
    if @tag_names
      self.tags = @tag_names.split(/\s+/).map do |name|
        Tag.find_or_create_by_name(name)
      end
    end
  end
  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end

end
