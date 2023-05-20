module PokemonTrainersHelper
    def level
        PokemonTrainer.levels.keys.map do |level|
            [t("activerecord.attributes.pokemon_trainer.types_level.#{level}"), level]
        end
    end
end 