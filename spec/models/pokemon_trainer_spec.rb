require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Ash",
                        last_name: "Ketchum",
                        region: "Kanto",
                        id_number: "12345678")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 characters" do
    subject.first_name = "Johnathannnn"
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 10 characters" do
    subject.last_name = "McCarthyovich"
    expect(subject).to_not be_valid
  end

  it "is not valid without region" do
    subject.region = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with an id_number with less than 8 characters" do
    subject.id_number = "1234567"
    expect(subject).to_not be_valid
  end

  it "is not valid with an id_number with more than 10 characters" do
    subject.id_number = "12345678900"
    expect(subject).to_not be_valid
  end

  it "is not valid with a non-unique id_number" do
    PokemonTrainer.create(
      first_name: "Gary",
      last_name: "Oak",
      region: "Kanto",
      id_number: "12345678"
    )

    expect(subject).to_not be_valid
  end
end
