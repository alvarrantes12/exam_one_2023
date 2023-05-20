json.array! @capture_pokemons do |capture_pokemons|
    json.pokemon_trainer @capture_pokemons.pokemon_trainer.name
    json.pokemon @capture_pokemons.pokemon_trainer.pokemon.name
end