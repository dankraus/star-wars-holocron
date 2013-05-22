class ChangeContentInNewsEntry < ActiveRecord::Migration
  def change
    change_column :news_entries, :content, :text
  end
end
