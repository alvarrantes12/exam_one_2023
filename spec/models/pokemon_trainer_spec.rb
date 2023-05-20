require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(
      first_name: "Ash",
      last_name: "ketchup",
      region: "Johto",
      id_number: "12345678"
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a region" do
    subject.region = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an ID number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if first_name exceeds the maximum length" do
    subject.first_name = "A" * 11
    expect(subject).to_not be_valid
  end

  it "is not valid if last_name exceeds the maximum length" do
    subject.last_name = "B" * 11
    expect(subject).to_not be_valid
  end

  it "is not valid if id_number has less than 8 characters" do
    subject.id_number = "1234567"
    expect(subject).to_not be_valid
  end

  it "is not valid if id_number has more than 10 characters" do
    subject.id_number = "12345678901"
    expect(subject).to_not be_valid
  end

end
