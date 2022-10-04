class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.bigint :teams_id
      t.string :group_name

      t.timestamps
    end
  end
end
