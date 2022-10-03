class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.bigint :team_id
      t.bigint :group_id
      t.integer :game_result

      t.timestamps
    end

  end
end
