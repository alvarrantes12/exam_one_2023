class CreateCapturedPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :captured_pokemons do |t|
      t.string :location
      t.references :trainer, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
