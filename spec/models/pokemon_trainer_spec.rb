require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject { 
    described_class.new(first_name: "Jesus",
                        last_name: "Rodriguez",
                        region: "Kanto",
                        id_number: "208460338",
                        level: 1)
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
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "abcdefghijk"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 10 letters" do
    subject.last_name = "abcdefghijk"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less than 8 numbers" do
    subject.id_number = "1234567"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more than 10 numbers" do
    subject.id_number = "12345678912"
    expect(subject).to_not be_valid
  end
end
