class AddForeignKeysToCapturedPokemons < ActiveRecord::Migration[7.0]
  def change
    add_reference :captured_pokemons, :pokemon_trainer, null: false, foreign_key: true
    add_reference :captured_pokemons, :pokemon, null: false, foreign_key: true
  end
end
