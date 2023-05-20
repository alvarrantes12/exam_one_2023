class CapturedPokemon < ApplicationRecord
    belongs_to :pokemon_trainer
    belongs_to :pokemon

    validates :pokemon_id, presence :true
    validates :pokemon_trainer_id, presence :true
end
