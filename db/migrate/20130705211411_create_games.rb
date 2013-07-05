class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.date :game_date
      t.string :game_time
      t.string :location
      t.timestamps
    end
  end
end
