class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: {minimum: 3, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 3, maximum: 10}
    validates  :id_number, presence: true, uniqueness: true, length: {minimum: 8, maximum: 10}

    enum level: {'High': 0, 'Medium':1, 'Low': 2}
end