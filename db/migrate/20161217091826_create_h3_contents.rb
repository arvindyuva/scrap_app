class CreateH3Contents < ActiveRecord::Migration[5.0]
  def change
    create_table :h3_contents do |t|
      t.string :h3_data

      t.timestamps
    end
  end
end
