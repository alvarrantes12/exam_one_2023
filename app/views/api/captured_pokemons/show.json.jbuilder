json.id @captured_pokemon.id
json.location @captured_pokemon.location
json.trainer do
    json.id @captured_pokemon.pokemon_trainer.id
    json.first_name @captured_pokemon.pokemon_trainer.first_name
    json.last_name @captured_pokemon.pokemon_trainer.last_name
end
json.pokemon do
    json.id @captured_pokemon.pokemon.id
    json.name @captured_pokemon.pokemon.name
end
