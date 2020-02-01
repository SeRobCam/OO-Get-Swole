class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all 
    @@all
  end

  def list_memberships_for_gym 
    Membership.all.select { |mem| mem.gym == self }
  end

  def list_of_lifters 
    list_memberships_for_gym.map { |mem| mem.lifter }
  end

  def list_of_names 
    list_of_lifters.map { |mem| mem.name }
  end

  def combined_lift_total_per_lifter
    list_of_lifters.map { |lif| lif.lift_total }.sum
  end


end
