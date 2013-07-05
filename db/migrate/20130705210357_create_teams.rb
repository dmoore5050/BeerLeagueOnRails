class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :teamname
      t.string :owner_first_name
      t.string :owner_last_name
      t.integer :zip_code
      t.string :phone_number
      t.string :sponsor
      t.string :location
      t.timestamps
    end
  end
end
