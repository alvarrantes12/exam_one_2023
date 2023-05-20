module Api
  class CapturedPokemonsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_captured_pokemon, only: %i[ show edit update destroy ]
    before_action :set_pokemons
    before_action :set_pokemon_trainers
  
    def index
      @captured_pokemons = CapturedPokemon.all
    end
  
    def show; end
  
    def new
      @captured_pokemon = CapturedPokemon.new
    end
  
    def edit; end
  
    def create
      @captured_pokemon = CapturedPokemon.new(captured_pokemon_params)

      if @captured_pokemon.save
        render 'api/captured_pokemons/show', status: :created
      else
        render json: @captured_pokemon.errors, status: :unprocessable_entity 
      end
    end
  
    def update
      if @captured_pokemon.update(captured_pokemon_params)
        render 'api/captured_pokemons/show', status: :ok
      else
        render json: @captured_pokemon.errors, status: :unprocessable_entity 
      end
    end
  
    def destroy
      @captured_pokemon.destroy
  
      render 'api/captured_pokemons/show', status: :ok
    end
  
    private
      def set_pokemons
        @pokemons = Pokemon.all.map {|pokemon| ["#{pokemon.name}", pokemon.id]}
      end

      def set_pokemon_trainers
        @set_pokemon_trainers = PokemonTrainer.all.map {|pokemon_trainer| ["#{pokemon_trainer.first_name} #{pokemon_trainer.last_name}", pokemon_trainer.id]}
      end

      def set_captured_pokemon
        @captured_pokemon = CapturedPokemon.find(params[:id])
      end
  
      def captured_pokemon_params
        params.require(:captured_pokemon).permit(:location, :pokemon_trainer_id, :pokemon_id)
      end
  end
end
