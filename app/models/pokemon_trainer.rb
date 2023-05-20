class PokemonTrainer < ApplicationRecord
    has_many :pokemons
    belongs_to :captured_pokemon
    
    validates :first_name, presence: true, length: {maximum: 10} 
    validates :last_name, presence: true, length: {maximum: 10}
    validates :id_number, presence: true, length: {minimum: 8, maximum: 10}, uniqueness: true
    validates :level, presence: true
  
    
    enum level: {'low': 0, 'medium': 1, 'high': 2}
end