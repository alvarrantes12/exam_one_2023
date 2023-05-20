class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      has_many :captured_pokemons
      has_many :pokemon_trainers :through :captured_pokemons
      t.timestamps
    end
  end
end
