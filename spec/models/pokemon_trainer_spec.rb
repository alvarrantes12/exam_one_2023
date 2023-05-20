require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name: "Ahs",
                        last_name: "Hernandez",
                        id_number: 123456789)
  }

  it "valid with valid attributes"do
    expect(subject).to be_valid
  end 
  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name longer than 10 characters' do
    subject.first_name = 'aaaaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name shorter than 3 characters' do
    subject.first_name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without valid last_name with more than 10 letters"do
    subject.last_name = "jaytcprqocy"
    expect(subject).to_not be_valid
  end

  it 'is not valid with a last_name shorter than 3 characters' do
    subject.last_name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a last_name shorter than 8 characters' do
    subject.id_number = 91726
    expect(subject).to_not be_valid
  end

  it 'is not valid with a last_name shorter than 10 characters' do
    subject.id_number = 98765432110
    expect(subject).to_not be_valid
  end


  it 'is not valid with a duplicated id_number' do
    existing_pokemon_trainer = described_class.create(first_name: 'AAAA', last_name: 'AAAAA', id_number: 728354719)
    subject.id_number = existing_pokemon_trainer.id_number
    expect(subject).to_not be_valid
  end 
end
