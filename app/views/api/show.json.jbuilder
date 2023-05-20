json.capture_pokemons do
    json.capture_pokemons @capture_pokemons.id
    json.pokemon @capture_pokemons.pokemon.name
    json.pokemon_trainer @capture_pokemons.pokemon.pokemon_trainer.first_name
end