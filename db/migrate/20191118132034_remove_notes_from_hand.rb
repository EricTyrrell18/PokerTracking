class RemoveNotesFromHand < ActiveRecord::Migration[6.0]
  def change

    remove_column :hands, :notes, :text
  end
end
