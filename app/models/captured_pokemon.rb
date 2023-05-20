class CapturedPokemon < ApplicationRecord
    belongs_to :pokemon
    belongs_to :pokemon_trainer

    validates :location, presence: true
end
