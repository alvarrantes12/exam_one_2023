require 'rails_helper'

RSpec.describe "capture_pokemons/index", type: :view do
  before(:each) do
    assign(:capture_pokemons, [
      CapturePokemon.create!(
        locacion: "Locacion"
      ),
      CapturePokemon.create!(
        locacion: "Locacion"
      )
    ])
  end

  it "renders a list of capture_pokemons" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Locacion".to_s), count: 2
  end
end
