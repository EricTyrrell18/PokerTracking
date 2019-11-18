class AddNotesToHand < ActiveRecord::Migration[6.0]
  def change
    add_column :hands, :notes, :text
  end
end
