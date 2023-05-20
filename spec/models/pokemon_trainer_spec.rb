require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Fabricio",
                        last_name: "Vega",
                        region: "Grecia",
                        id_number: "12345678",
                        level: 1)
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more then 10 letters" do
    subject.first_name = "abcdefghijklmnop"
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more then 10 letters" do
    subject.last_name = "abcdefghijklmnop"
    expect(subject).to_not be_valid
  end

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less then 8 letters" do
    subject.id_number = "12345"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more then 10 letters" do
    subject.id_number = "123456789101112"
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end
end
