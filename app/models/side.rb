class Side < ActiveRecord::Base
  attr_accessible        :team_id, :game_id, :score, :outcome

  belongs_to :teams
  belongs_to :games
end
