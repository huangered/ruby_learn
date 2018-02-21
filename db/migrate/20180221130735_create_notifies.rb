class CreateNotifies < ActiveRecord::Migration[5.1]
  def change
    create_table :notifies do |t|
      t.text :data
      t.boolean :readed

      t.timestamps
    end
  end
end
