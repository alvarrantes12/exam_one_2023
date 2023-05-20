require 'rails_helper'

RSpec.describe "capture_pokemons/edit", type: :view do
  let(:capture_pokemon) {
    CapturePokemon.create!(
      locacion: "MyString"
    )
  }

  before(:each) do
    assign(:capture_pokemon, capture_pokemon)
  end

  it "renders the edit capture_pokemon form" do
    render

    assert_select "form[action=?][method=?]", capture_pokemon_path(capture_pokemon), "post" do

      assert_select "input[name=?]", "capture_pokemon[locacion]"
    end
  end
end
