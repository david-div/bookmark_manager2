class Player

DEFAULT_VALUE = 20
attr_reader :name, :hp

  def initialize(name, hp=100)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= DEFAULT_VALUE
  end 
end
