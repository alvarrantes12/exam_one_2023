class PokemonTrainer < ApplicationRecord
    has_many :captured_pokemon

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 10 }
    validates :id_number, presence: true, uniqueness: true, length: { minimum: 8, maximum: 10 }
    
    validates :level, presence: true

    enum level: {'low': 0, 'half': 1, 'high': 2}
end