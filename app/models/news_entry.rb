class NewsEntry < ActiveRecord::Base
  attr_accessible :content, :description, :published, :summary, :title, :url
  validates_uniqueness_of :title, :url
  validates_presence_of :title, :url

  default_scope order('published DESC')

  belongs_to :feed
end
