require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Trainer",
                        last_name: "Trainer",
                        region: "Alola",
                        id_number: "23232323")
  }

  it "is valid with valid attributes" do
    expect(subject). to be_valid
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

  it "is not valid with first_name with more than 10 letters" do
    subject.first_name = "pepepepepepepepe"
    expect(subject).to_not be_valid
  end

  it "is not valid with last_name with more than 10 letters" do
    subject.last_name = "Jesdsdsdsdsd"
    expect(subject).to_not be_valid
  end

  it "is not valid with id_number with more than 10 letters" do
    subject.id_number = "Jesdsdsdsdsd"
    expect(subject).to_not be_valid
  end

  it "is not valid with id_number with less than 8 letters" do
    subject.id_number = "Jesdsd"
    expect(subject).to_not be_valid
  end
end
