class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

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

  end

  def outrun_zombie?

  end

  def survive_attack?

  end

  def self.all
    @@horde
  end

  def self.new_day
  end

  def self.some_die_off
    die = rand(11).times do @@horde.pop end
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
