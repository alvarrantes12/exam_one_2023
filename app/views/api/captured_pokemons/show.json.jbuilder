json.captured_pokemon do
    json.pokemon_trainer do
        json.first_name @captured_pokemon.pokemon_trainer.first_name
        json.last_name @captured_pokemon.pokemon_trainer.last_name
    end
    json.pokemon do
        json.name @captured_pokemon.pokemon.name
    end
end