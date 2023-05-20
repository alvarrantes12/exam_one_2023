class PokemonTrainer < ApplicationRecord
    has_many :captured_pokemon

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :region, presence: true
    validates :id_number, presence: true, length: { minimum: 5, maximum: 8 }, uniqueness: true

    enum level: { "high": 0, "medium": 1, "low": 2 }
end