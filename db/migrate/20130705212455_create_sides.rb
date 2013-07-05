class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.integer :team_id
      t.integer :game_id
      t.string :score
      t.string :outcome
      t.timestamps
    end
  end
end
