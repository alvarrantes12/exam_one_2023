json.array! @captured_pokemons do |captured_pokemon|
    json.id captured_pokemon.id
    json.name captured_pokemon.name
end