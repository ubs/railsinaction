class Bacon
  attr_accessor :expired

  def initialize
    @expired = false
  end

  def edible?
    !@expired
  end

  def expired!
    @expired = true
  end
end