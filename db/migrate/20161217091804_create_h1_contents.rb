class CreateH1Contents < ActiveRecord::Migration[5.0]
  def change
    create_table :h1_contents do |t|
      t.string :h1_data

      t.timestamps
    end
  end
end
