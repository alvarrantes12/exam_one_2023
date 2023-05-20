class CapturedPokemon < ApplicationRecord
    belongs_to :captured_pokemon
    belongs_to :pokemon
    validates :location, presence: true
end
