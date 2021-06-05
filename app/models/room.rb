class Room < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :game
  belongs_to_active_hash :platform

  validates :game_id, :platform_id, numericality: { other_than: 1 } 
end
