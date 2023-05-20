class Pokemon < ApplicationRecord
    has_many :pokemon_trainer
    belongs_to :captured_pokemon
end
