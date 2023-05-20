json.pokemon_trainer do
    json.id @pokemon_trainer.id
    json.location @pokemon_trainer.location
    json.pokemon_trainer_name @pokemon_trainer.pokemon_trainer.first_name
end