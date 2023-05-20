require 'rails_helper'

  RSpec.describe PokemonTrainer, type: :model do
    subject{
      described_class.new(first_name: "Joshue",
                          last_name: "Mora",
                          region: "Alajuela",
                          id_number: "abcdefghij",
                          level: 2)
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more then 10 letters" do
    subject.first_name = "aaaaaaaaaaa"
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more then 10 letters" do
    subject.last_name = "aaaaaaaaaaa"
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

  it "is not valid with a id_number with less then 8 digits" do
    subject.id_number = "aaaaaaa"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more then 10 digits" do
    subject.id_number = "aaaaaaaaaaa"
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end
end