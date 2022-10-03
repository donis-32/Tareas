class AlterPools < ActiveRecord::Migration[7.0]
  def change
    add_reference :pools, :user, foreing_key: true
  end
end
