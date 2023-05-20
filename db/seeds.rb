pokemon_service = PokemonService.new

pokemon_trainer = PokemonTrainer.create(
  first_name: "Ash",
  last_name: "Ketchum",
  region: "Kanto",
  id_number: "12345678"
)

pokemon = pokemon_service.generate_pokemon
pokemon_trainer.pokemon = pokemon
pokemon_trainer.save

puts t('application.seed_executed')
