require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject{
    described_class.new(first_name: "Test",
                        last_name: "Test L",
                        region: "test R",
                        id_number: "123456789",
                        level: 2
                       )
  }

  it "is valid with valid attributes" do
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

  it "is not valid with a first_name with more than 10 letters" do
    subject.last_name = "testtesttestestte"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 10 letters" do
    subject.last_name = "testtesttestesttest"
    expect(subject).to_not be_valid
  end


  it "is not valid with a id_number with less then 8 numbers" do
    subject.id_number = "1234"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more than 10 numbers" do
    subject.id_number = "1234567891111"
    expect(subject).to_not be_valid
  end
end
