class CreateCardTables < ActiveRecord::Migration[6.0]
  def change
    create_table :card_tables do |t|
      t.integer :hand_id
      t.integer :card_id

      t.timestamps
    end
  end
end
