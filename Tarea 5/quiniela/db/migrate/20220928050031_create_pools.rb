class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.integer :team_1_id
      t.integer :game_result_team_1_id
      t.integer :team_2_id
      t.integer :game_result_team_2_id
      t.date :game_date
      t.time :game_hour

      t.timestamps
    end
    add_reference :pools, :users, foreing_key: true
  end
end
