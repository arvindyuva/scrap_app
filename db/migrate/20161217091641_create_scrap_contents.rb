class CreateScrapContents < ActiveRecord::Migration[5.0]
  def change
    create_table :scrap_contents do |t|
      t.string :main_url

      t.timestamps
    end
  end
end
