class Account
  attr_accessor :balance

  def initialize
    balance = 0
  end

  def withdraw amount
    @balance = (@balance.to_f - amount.to_f)
  end
end