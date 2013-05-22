class RemoveDescriptionFromNewsEntry < ActiveRecord::Migration
  def up
    remove_column :news_entries, :description
  end

  def down
    add_column :news_entries, :description, :string
  end
end
