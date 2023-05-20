class CreatePokemonTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :region
      t.string :id_number
      has_many :captured_pokemons
      has_many :pokemons, through: :captured_pokemons
      t.timestamps
    end
  end
end
