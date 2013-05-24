namespace :feed_sync do
  desc 'sync all missing news entries from Feeds'
  task :all => :environment do
    Feed.all.each do |feed|
      feed.import_feed
    end
  end
end