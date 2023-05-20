module PokemonTrainersHelper
    def level
        PokemonTrainer.levels.keys.map do |level|
      [t("activerecord.attributes.pokemonTrainer.levels.#{level}"), level]
     end
    end
   end