class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.bigint :team_1_id
      t.bigint :game_result_team_1_id
      t.bigint :team_2_id
      t.bigint :game_result_team_2_id
      t.date :game_date
      t.time :game_hour

      t.timestamps
    end
  end
end
