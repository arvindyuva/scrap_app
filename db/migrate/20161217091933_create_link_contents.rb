class CreateLinkContents < ActiveRecord::Migration[5.0]
  def change
    create_table :link_contents do |t|
      t.string :link

      t.timestamps
    end
  end
end
