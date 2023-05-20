class PokemonTrainer < ApplicationRecord
    has_many :capture_pokemons
    has_many :pokemons, through: :captured_pokemons

    validates :first_name, presence: true, length: {maximum: 10}
    validates :last_name, presence: true, length: {maximum: 10}
    validates :id_number, uniqueness: true, presence: true, length: {minimum: 8, maximum: 10}

    enum level: {'alto': 0,'medio': 1,'bajo':2}
end
