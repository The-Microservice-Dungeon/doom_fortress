class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_id
      t.string :topic
      t.string :timestamp
      t.string :event_type
      t.text :value

      t.timestamps
    end
  end
end
