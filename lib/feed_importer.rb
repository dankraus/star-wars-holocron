require 'feedzirra'

class FeedImporter
  def self.import_feed(feed)
    parsed_feed = Feedzirra::Feed.fetch_and_parse(feed.url)

    parsed_feed.entries.each do |entry|
      feed.news_entries.where(url: entry.url).first_or_create(
          title: entry.title,
          summary: entry.summary,
          url: entry.url,
          published: entry.published
      )
    end
  end
end