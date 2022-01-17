class CreateGameTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :game_times do |t|
      t.integer :time
      t.integer :round_count
      t.integer :round_time

      t.timestamps
    end
  end
end
