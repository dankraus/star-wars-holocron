class AddFeedIdToNewsEntry < ActiveRecord::Migration
  def change
    add_column :news_entries, :feed_id, :integer
  end
end
