class CreateScrapData < ActiveRecord::Migration[5.0]
  def change
    create_table :scrap_data do |t|
      t.string :h1_data
      t.string :h2_data
      t.string :h3_data
      t.string :links

      t.timestamps
    end
  end
end
