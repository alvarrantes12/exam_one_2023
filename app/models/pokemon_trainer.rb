class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 10 }
    validates :region, presence: true
    validates :id_number, presence: true, length: { minimum: 8, maximum: 10 }, uniqueness: true
    enum level: { alto: 0, medio: 1, bajo: 2 }
    has_many :captured_pokemons
    has_many :pokemons, through: :captured_pokemons
end
