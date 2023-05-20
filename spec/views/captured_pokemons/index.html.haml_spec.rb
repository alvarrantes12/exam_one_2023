require 'rails_helper'

RSpec.describe "captured_pokemons/index", type: :view do
  before(:each) do
    assign(:captured_pokemons, [
      CapturedPokemon.create!(
        location: "Location"
      ),
      CapturedPokemon.create!(
        location: "Location"
      )
    ])
  end

  it "renders a list of captured_pokemons" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
  end
end
