require 'rails_helper'

RSpec.describe PokemonTrainer, type: :model do
  subject {
    described_class.new(first_name:"Jonathan",
                          last_name: "Salazar2",
                          region: "Grecia",
                          id_number: 123)
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
  it "It is not valid with a first_name of more than 10 letters" do
    subject.first_name = "asdfghjklqw"
    expect(subject).to_not be_valid
  end


  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
  it "It is not valid with a last_name of more than 10 letters" do
    subject.last_name = "asdfghjklqwty"
    expect(subject).to_not be_valid
  end


  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end
  it "It is not valid with a id_number of less than 8 letters" do
    subject.id_number = "asd"
    expect(subject).to_not be_valid
  end
  it "It is not valid with a id_number of more than 10 letters" do
    subject.id_number = "asdfghjklqwtylm"
    expect(subject).to_not be_valid
  end

end
