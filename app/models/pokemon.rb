class Pokemon < ApplicationRecord
    has_many :captured_pokemon
    has_many :pokemon_trainers, through: :captured_pokemon

    validates :name,presence: true
end