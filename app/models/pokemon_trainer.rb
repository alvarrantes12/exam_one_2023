class PokemonTrainer < ApplicationRecord
    has_many :captured_pokemon
    has_many :pokemons, through: :captured_pokemon

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 10 }
    validates :id_number, presence: true, uniqueness: true, length: { minimum: 8, maximum: 10 } 
    enum level: { 'high': 0, 'medium': 1, 'low': 2 }
end