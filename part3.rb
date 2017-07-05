class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  attr_accessor :speed, :strength

  def initialize(speed, strength)
    if speed > @@max_speed
      @speed = @@default_speed
    else
      @speed = speed
    end
    if strength > @@max_strength
      @strength = @@default_strength
    else
      @strength = strength
    end

  end

  def encounter
    random = rand(2)
    if random == 0

  end

  def outrun_zombie?
    how_fast = rand(0..@@max_speed)
    if how_fast > self.speed
      return true
    else
      return false
    end

  end

  def survive_attack?
    how_strong = rand(0..@@max_strength)
    if how_strong > self.strength
      return true
    else
      return false
    end

  end

  def self.all
    @@horde
  end

  def self.new_day
    self.some_die_off
    self.spawn
    self.increase_plague_level

  end

  def self.some_die_off
    rand(11).times do @@horde.pop end
  end

  def self.spawn
    num = rand(@@plague_level)
    num.times do
      zombie = Zombie.new(rand(@@max_speed + 1), rand(@@max_strength + 1))
      @@horde << zombie
    end
    @@horde
  end

  def self.increase_plague_level
    @@plague_level = rand(3) + @@plague_level
    return @@plague_level
  end





end
