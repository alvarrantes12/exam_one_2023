require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Antony",
                        last_name: "Barrantes",
                        region: "Hoenn",
                        id_number: "123456789",
                        level: 2)
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with less than 4 letters" do
    subject.first_name = "asd"
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "kfhwtuidpdfs"
  end

  it "is not valid with a last_name with less than 4 letters" do
    subject.last_name = "poi"
  end

  it "is not valid with a last_name with more than 10 letters" do
    subject.last_name = "kfhwtuiqwefasddsadddpdfs"
  end

  it "is not valid with a id_number with less than 8 letters" do
    subject.id_number = "poi"
  end

  it "is not valid with a id_number with more than 10 letters" do
    subject.id_number = "kfhwtuiqwefasddsadddpdfs"
  end

end
