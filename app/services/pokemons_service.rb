class PokemonsService 
    def build_first_name
     response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")  
     results = response["name"]
     Pokemons.create(name: results)
    end
   end
   