class CapturePokemonsController < ApplicationController
  before_action :set_capture_pokemon, only: %i[ show edit update destroy ]

  # GET /capture_pokemons or /capture_pokemons.json
  def index
    @capture_pokemons = CapturePokemon.all
  end

  # GET /capture_pokemons/1 or /capture_pokemons/1.json
  def show
  end

  # GET /capture_pokemons/new
  def new
    @capture_pokemon = CapturePokemon.new
  end

  # GET /capture_pokemons/1/edit
  def edit
  end

  # POST /capture_pokemons or /capture_pokemons.json
  def create
    @capture_pokemon = CapturePokemon.new(capture_pokemon_params)

    respond_to do |format|
      if @capture_pokemon.save
        format.html { redirect_to capture_pokemon_url(@capture_pokemon), notice: "Capture pokemon was successfully created." }
        format.json { render :show, status: :created, location: @capture_pokemon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capture_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capture_pokemons/1 or /capture_pokemons/1.json
  def update
    respond_to do |format|
      if @capture_pokemon.update(capture_pokemon_params)
        format.html { redirect_to capture_pokemon_url(@capture_pokemon), notice: "Capture pokemon was successfully updated." }
        format.json { render :show, status: :ok, location: @capture_pokemon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capture_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capture_pokemons/1 or /capture_pokemons/1.json
  def destroy
    @capture_pokemon.destroy

    respond_to do |format|
      format.html { redirect_to capture_pokemons_url, notice: "Capture pokemon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capture_pokemon
      @capture_pokemon = CapturePokemon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capture_pokemon_params
      params.require(:capture_pokemon).permit(:locacion)
    end
end
