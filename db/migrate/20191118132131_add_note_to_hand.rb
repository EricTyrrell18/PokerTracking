class AddNoteToHand < ActiveRecord::Migration[6.0]
  def change
    add_column :hands, :note, :text
  end
end
