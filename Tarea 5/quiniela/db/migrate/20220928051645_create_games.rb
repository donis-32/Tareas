class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :team_id
      t.integer :group_id
      t.integer :game_result

      t.timestamps
    end
    add_reference :teams, :team_id, foreing_key: true
    add_reference :teams, :group_id, foreing_key: true
  end
end
