require 'rails_helper'

describe "when a character is created" do
  it "it has attributes" do
    attributes = {
      name: "Sirius Black",
      role: "Godfather",
      house: "Gryffindor",
      patronus: "X"
    }

    character = Character.new(attributes)

    expect(character).to be_a Character
    expect(character.name). to eq("Sirius Black")
    expect(character.role). to eq("Godfather")
    expect(character.house). to eq("Gryffindor")
    expect(character.patronus). to eq("X")
  end

  it "returns n/a if attribute not included" do
    attributes = {
      name: "Sirius Black",
      house: "Gryffindor",
      patronus: "X"
    }

    character = Character.new(attributes)

    expect(character).to be_a Character
    expect(character.name). to eq("Sirius Black")
    expect(character.role). to eq("n/a")
    expect(character.house). to eq("Gryffindor")
    expect(character.patronus). to eq("X")

  end

end
