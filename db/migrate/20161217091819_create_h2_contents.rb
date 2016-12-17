class CreateH2Contents < ActiveRecord::Migration[5.0]
  def change
    create_table :h2_contents do |t|
      t.string :h2_data

      t.timestamps
    end
  end
end
