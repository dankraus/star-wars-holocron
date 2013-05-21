require 'feed_importer'

namespace :feed_sync do
  desc 'sync all missing news entries from Feeds'
  task :all => :environment do
    Feed.all.each do |feed|
      FeedImporter.import_feed(feed)
    end
  end
end