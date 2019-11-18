class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.date :date_played

      t.timestamps
    end
  end
end
