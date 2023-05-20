class CapturedPokemon < ApplicationRecord
  validates :location, presence: true
  
  belongs_to :pokemon_trainer
  belongs_to :pokemon
end