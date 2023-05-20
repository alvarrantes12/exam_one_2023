class CapturedPokemon < ApplicationRecord
    belongs_to :pokemon_trainer
    belongs_to :pokemon

    validates :location, presence: :true
end
