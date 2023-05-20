class ChangeFirstNameToNameInPokemons < ActiveRecord::Migration[7.0]
  def change
    rename_column :pokemons, :first_name, :name
  end
end
