class AddContentAndDescriptionToNewsEntry < ActiveRecord::Migration
  def change
    add_column :news_entries, :content, :string
    add_column :news_entries, :description, :string
  end
end
