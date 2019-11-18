class AddGameIdToHand < ActiveRecord::Migration[6.0]
  def change
    add_column :hands, :game_id, :integer
  end
end
