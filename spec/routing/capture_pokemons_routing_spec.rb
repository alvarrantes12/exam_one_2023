require "rails_helper"

RSpec.describe CapturePokemonsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/capture_pokemons").to route_to("capture_pokemons#index")
    end

    it "routes to #new" do
      expect(get: "/capture_pokemons/new").to route_to("capture_pokemons#new")
    end

    it "routes to #show" do
      expect(get: "/capture_pokemons/1").to route_to("capture_pokemons#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/capture_pokemons/1/edit").to route_to("capture_pokemons#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/capture_pokemons").to route_to("capture_pokemons#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/capture_pokemons/1").to route_to("capture_pokemons#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/capture_pokemons/1").to route_to("capture_pokemons#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/capture_pokemons/1").to route_to("capture_pokemons#destroy", id: "1")
    end
  end
end
