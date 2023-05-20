require 'rails_helper'

RSpec.describe CapturedPokemon, type: :model do
  it { should belong_to(:pokemon_trainer) }
  it { should belong_to(:pokemon) }
end