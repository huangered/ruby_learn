class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :url
      t.integer :star
      t.string :name

      t.timestamps
    end
  end
end
