module PokemonTrainersHelper
    def special_levels
        PokemonTrainer.special_levels.keys.map do |type|
            [t("activerecord.attributes.pokemon_trainer.level_Types.#{type}"), type]
        end
    end
end