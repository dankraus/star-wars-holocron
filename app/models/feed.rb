class Feed < ActiveRecord::Base
  attr_accessible :name, :url

  validates_uniqueness_of :name, :url
  validates_presence_of :name, :url

  has_many :news_entries

  def import_feed
    parsed_feed = Feedzirra::Feed.fetch_and_parse(self.url)

    parsed_feed.entries.each do |entry|
      self.news_entries.where(url: entry.url).first_or_create(
          title: entry.title,
          summary: entry.summary,
          content: entry.content,
          url: entry.url,
          published: entry.published
      )
    end
  end
end
