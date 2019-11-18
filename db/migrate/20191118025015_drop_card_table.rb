class DropCardTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :card_tables
  end
end
