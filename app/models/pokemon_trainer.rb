class PokemonTrainer < ApplicationRecord
    has_many :captured_pokemons
    has_many :pokemons, through: :captured_pokemons
    
    validates :first_name, presence: :true, length: { maximum: 10 }
    validates :last_name, presence: :true, length: { maximum: 10 }
    validates :id_number, presence: :true, length: { minimum: 5, maximum: 10 } , uniqueness: true

    enum special_level: {'high': 0,'medium': 1,'low': 2}
end