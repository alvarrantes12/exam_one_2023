class CapturedPokemon < ApplicationRecord
    has_many: PokemonTrainer

    validates :region, presence: true
end
