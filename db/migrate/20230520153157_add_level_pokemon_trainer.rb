class AddLevelPokemonTrainer < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemon_trainers, :special_level, :integer
  end
end
