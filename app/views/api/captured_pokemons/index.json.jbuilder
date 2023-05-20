json.array! @captured_pokemons do |captured_pokemon| 
    json.id captured_pokemon.id
    json.captured_pokemon do
        json.first_name @captured_pokemon.pokemon.name   
    end
    json.pokemon_trainer do
        json.first_name @captured_pokemon.pokemon_trainer.first_name   
    end
end
