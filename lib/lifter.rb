class Lifter
  
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all 
    @@all
  end

  def self.list_of_lifters 
    self.all.map { |lift| puts lift.name }
  end

  def list_memberships_for_lifter
    Membership.all.select { |mem| mem.lifter == self }
  end

  def list_of_gyms 
    list_memberships_for_lifter.map { |mem| mem.gym }
  end

  def self.average_lift 
    total = Lifter.all.map { |lif| lif.lift_total}
    total.sum / total.length
  end

  def total_cost_for_lifter 
    list_memberships_for_lifter.map { |mem| mem.cost}.sum
  end 

  def sign_in(cost, gym)
    Membership.new(cost, self, gym)
  end


end
