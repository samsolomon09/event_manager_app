class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity
      t.references :user, null: false, foreign_key: true
      t.date :event_date

      t.timestamps
    end
  end
end
