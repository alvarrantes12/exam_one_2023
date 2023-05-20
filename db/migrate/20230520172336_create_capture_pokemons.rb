class CreateCapturePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :capture_pokemons do |t|
      t.string :locacion
      
      t.timestamps
    end
  end
end
