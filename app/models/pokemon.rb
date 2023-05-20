class Pokemon < ApplicationRecord
    has_many :capture_pokemons
    has_many :trainers, through: :capture_pokemons
end