require 'rails_helper'

RSpec.describe CapturedPokemon, type: :model do
  subject {
    described_class.new(location: "En el mar",
                    pokemon_trainer: PokemonTrainer.create(first_name:"Jonathan",last_name: "Salazar2",region: "Grecia", id_number: 12345678))
  }

  it "valid with valid attributes" do
      expect(subject).to be_valid
  end
end
