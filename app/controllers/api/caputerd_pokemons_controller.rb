module API
  class CaputerdPokemonsController < ApplicationController
    before_action :set_caputerd_pokemon, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token

    def index
      @caputerd_pokemons = CaputerdPokemon.all
    end


    def show
    end


    def new
      @caputerd_pokemon = CaputerdPokemon.new
    end


    def edit
    end

    def create
      @caputerd_pokemon = CaputerdPokemon.new(caputerd_pokemon_params)


        if @caputerd_pokemon.save
  
          render 'api/captured_pokemon/show', status: :created
        else
          render json: @caputerd_pokemon.errors, status: :unprocessable_entity 
        end
    end


    def update

        if @caputerd_pokemon.update(caputerd_pokemon_params)
          render 'api/captured_pokemon/show', status: :ok, location: @caputerd_pokemon 
        else
          render :edit, status: :unprocessable_entity 
        end
    end

    def destroy
      @caputerd_pokemon.destroy


      render 'api/captured_pokemon/index', status: :ok

    end

    private

      def set_caputerd_pokemon
        @caputerd_pokemon = CaputerdPokemon.find(params[:id])
      end


      def caputerd_pokemon_params
        params.require(:caputerd_pokemon).permit(:location, :pokemon_trainer_id, :pokemon_id)
      end
  end
end
