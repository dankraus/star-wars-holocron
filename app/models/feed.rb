class Feed < ActiveRecord::Base
  attr_accessible :name, :url

  validates_uniqueness_of :name, :url
  validates_presence_of :name, :url

  has_many :news_entries
end
