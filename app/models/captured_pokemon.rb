class CapturedPokemon < ApplicationRecord
    belongs_to :pokemon_trainer
    
    validates :name, presence: true
    validates :pokemon_trainer_id, presence: true
end
end
