json.captured_pokemon do
    json.id @captured_pokemon.id
    json.location @captured_pokemon.location
    json.pokemon @captured_pokemon.pokemon
    json.pokemon_trainer @captured_pokemon.pokemon_trainer.first_name
end