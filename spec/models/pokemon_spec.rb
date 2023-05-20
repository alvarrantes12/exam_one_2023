require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it { should have_many(:captured_pokemons) }
  it { should have_many(:pokemon_trainers).through(:captured_pokemons) }
end