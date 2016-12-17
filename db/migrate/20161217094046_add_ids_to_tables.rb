class AddIdsToTables < ActiveRecord::Migration[5.0]
  def change
    add_column :h1_contents, :scrap_content_id, :integer
    add_column :h2_contents, :scrap_content_id, :integer
    add_column :h3_contents, :scrap_content_id, :integer
    add_column :link_contents, :scrap_content_id, :integer
  end
end
