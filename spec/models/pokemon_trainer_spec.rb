require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Nombre 1",
                        last_name: "Apellido 1",
                        region: "Region",
                        id_number: "12345678")
  }

  it "is valid with attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without id number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with first name with more than 10 letters" do
    subject.first_name = "abcderfghijklmn"
    expect(subject).to_not be_valid
  end

  it "is not valid with last name with more than 10 letters" do
    subject.last_name = "abcderfghijklmn"
    expect(subject).to_not be_valid
  end

  it "is not valid with id number with less than 8 characters" do
    subject.id_number = "ab123"
    expect(subject).to_not be_valid
  end

  it "is not valid with id number with more than 10 characters" do
    subject.id_number = "ab1234567891011"
    expect(subject).to_not be_valid
  end
end
