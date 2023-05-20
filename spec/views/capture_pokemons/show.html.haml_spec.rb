require 'rails_helper'

RSpec.describe "capture_pokemons/show", type: :view do
  before(:each) do
    assign(:capture_pokemon, CapturePokemon.create!(
      locacion: "Locacion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Locacion/)
  end
end
