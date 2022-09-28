class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.integer :team_id_1
      t.integer :game_result_team_1_id
      t.integer :team_id_2
      t.integer :game_result_team_2
      t.date :game_date
      t.time :game_hour

      t.timestamps
    end
  end
end
