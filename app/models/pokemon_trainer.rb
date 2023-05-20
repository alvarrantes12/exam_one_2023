class PokemonTrainer < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 10 }
    validates :id_number, presence: true, length: { minimum: 8, maximum: 10 }, uniqueness: true
    enum level: {'high': 0, 'medium': 1, 'low': 2}
end