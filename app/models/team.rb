class Team < ActiveRecord::Base
  attr_accessible :teamname, :owner_first_name, :owner_last_name, :zip_code, :phone_number, :sponsor, :location, :user, :user_id

  has_many :sides, dependent: :destroy
  has_many :games, through: :sides
  belongs_to :user

  accepts_nested_attributes_for :sides, :games, allow_destroy: true,  reject_if: :reject_sides

  def reject_sides(attributed)
    attributed['game_id'].blank?
  end
end
