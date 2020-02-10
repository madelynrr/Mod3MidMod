class Character

  attr_reader :name, :role, :house, :patronus

  def initialize(character_attributes)
    @name = character_attributes[:name]
    @role = character_attributes[:role] || "n/a"
    @house = character_attributes[:house] || "n/a"
    @patronus = character_attributes[:patronus] || "n/a"
  end

end
