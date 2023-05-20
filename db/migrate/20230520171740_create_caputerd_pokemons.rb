class CreateCaputerdPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :caputerd_pokemons do |t|
      t.string :location
      belongs_to: pokemon
      belongs_to: pokemon_trainer
      t.timestamps
    end
  end
end
