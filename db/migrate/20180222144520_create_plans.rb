class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.text :data
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :finished

      t.timestamps
      t.references :user, foreign_key: true

    end
  end
end
