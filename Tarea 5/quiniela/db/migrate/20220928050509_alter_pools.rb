class AlterPools < ActiveRecord::Migration[7.0]
  def change
    add_reference :pools, :users, foreing_key: true
  end
end
