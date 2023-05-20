class PokemonsService
	def build_pokemon
		response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")
		pokemons = response["results"]
		random_question = pokemons[(0..pokemons.length).to_a.sample]
		Pokemon.create(name: random_question["name"])
	end
end