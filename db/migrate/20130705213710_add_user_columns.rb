class AddUserColumns < ActiveRecord::Migration

  def up
    def up
      add_column :teams, :user, :references
      add_column :games, :user, :references
    end
  end

end
