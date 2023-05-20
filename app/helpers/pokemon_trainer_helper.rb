module PokemonTrainerHelper
  def levels
    PokemonTrainer.levels.keys.map do |level|
      [t("activerecord.attributes.trainer.levels.#{level}"), level]
    end
  end
end
