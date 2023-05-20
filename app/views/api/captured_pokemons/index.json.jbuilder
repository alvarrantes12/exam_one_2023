json.array! @captured_pokemons do |captured_pokemon|
    json.id captured_pokemon.id
    json.location captured_pokemon.location
end