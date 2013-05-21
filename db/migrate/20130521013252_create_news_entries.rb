class CreateNewsEntries < ActiveRecord::Migration
  def change
    create_table :news_entries do |t|
      t.string :title
      t.string :summary
      t.string :url
      t.datetime :published

      t.timestamps
    end
  end
end
