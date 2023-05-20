json.capture_pokemon do
    json.id @capture_pokemon.id
    json.location @capture_pokemon.location
    json.pokemon_trainer do
        json.first_name @capture_pokemon.pokemon_trainer.first_name
        json.last_name @capture_pokemon.pokemon_trainer.last_name
    end
    
end
