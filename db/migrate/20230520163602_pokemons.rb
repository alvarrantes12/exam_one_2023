class Pokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :pokemon_name

      t.timestamps
    end
  end
end
