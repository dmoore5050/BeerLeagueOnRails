class Game < ActiveRecord::Base
  attr_accessible :home_team_id, :away_team_id, :game_date, :game_time, :user, :user_id

  has_many :sides, dependent: :destroy
  has_many :teams, through: :sides
  belongs_to :user

  accepts_nested_attributes_for :sides, :teams, allow_destroy: true
end
