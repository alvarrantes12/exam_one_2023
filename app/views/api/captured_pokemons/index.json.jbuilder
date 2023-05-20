json.array! @captured_pokemons do |captured_pokemon|
    json.id captured_pokemon.id
    json.location captured_pokemon.first_name
    json.name_pokemon captured_pokemon.pokemon.poke_name
    json.name_trainer captured_pokemon.pokemon_trainer.first_name
end
