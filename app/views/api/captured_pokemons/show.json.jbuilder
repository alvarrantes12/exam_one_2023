json.captured_pokemon do
    json.id @captured_pokemon.id
    json.name_trainer @captured_pokemon.pokemon_trainer.first_name.concat(' ').concat(@captured_pokemon.pokemon_trainer.last_name)
    json.poke_name @captured_pokemon.pokemon.poke_name
end
