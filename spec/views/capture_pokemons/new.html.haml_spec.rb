require 'rails_helper'

RSpec.describe "capture_pokemons/new", type: :view do
  before(:each) do
    assign(:capture_pokemon, CapturePokemon.new(
      locacion: "MyString"
    ))
  end

  it "renders new capture_pokemon form" do
    render

    assert_select "form[action=?][method=?]", capture_pokemons_path, "post" do

      assert_select "input[name=?]", "capture_pokemon[locacion]"
    end
  end
end
