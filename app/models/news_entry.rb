class NewsEntry < ActiveRecord::Base
  attr_accessible :published, :summary, :title, :url
  validates_uniqueness_of :title, :url
  validates_presence_of :title, :url

  belongs_to :feed
end
