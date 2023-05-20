class PokemonTrainer < ApplicationRecord

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 10 }
    validates :id_number, presence: true, uniqueness: true, length: {minimum:8, maximum:10}
    validates :level, presence: true

    enum level: {'bajo': 0, 'medio': 1, 'alto': 2}
  end
  