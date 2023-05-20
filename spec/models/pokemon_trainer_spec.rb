require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Ramirez",
                        last_name: "Domingo",
                        region: "Guatemala",
                        id_number: "RDG1234567",
                        level: 1)
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

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "asdfghjklvsvsvsvsfg"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 10 letters" do
    subject.last_name = "asdfghjklvsvsvsvsfg"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less than 8 letters" do
    subject.id_number = "asdfghj"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more than 10 letters" do
    subject.id_number = "asdfghjklvsvsvsvsfg"
    expect(subject).to_not be_valid
  end

end
