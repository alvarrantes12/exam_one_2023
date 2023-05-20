# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
pokemon_trainer = PokemonTrainer.create!(first_name: "Raquel", last_name: "Arias", id_number: 12345678, level: 2, captured_pokemons: captured_pokemons)