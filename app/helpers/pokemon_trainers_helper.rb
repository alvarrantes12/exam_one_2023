module PokemonTrainersHelper

    def levels
        PokemonTrainer.levels.keys.map do |level|
            [t("activerecord.attributes.comedian.levels.#{level}"), level]
        end
    end
end