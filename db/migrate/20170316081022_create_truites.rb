class CreateTruites < ActiveRecord::Migration[5.0]
  def change
    create_table :truites do |t|
      t.string :content

      t.timestamps
    end
  end
end
