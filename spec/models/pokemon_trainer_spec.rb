require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Isaac",
                        last_name: "Lazo",
                        region: "Occidente",
                        id_number: "12345678")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "Isaacccccccc"
    expect(subject).to_not be_valid 
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 10 letters" do
    subject.last_name = "Lazoooooooo"
    expect(subject).to_not be_valid 
  end

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less than 8 letters" do
    subject.id_number = "123"
    expect(subject).to_not be_valid 
  end

  it "is not valid with a id_number with more than 10 letters" do
    subject.id_number = "123456789101112"
    expect(subject).to_not be_valid 
  end

end
