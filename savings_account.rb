
class Account
  def initialize(starting_balance = 0)
    @balance = starting_balance
  end
  attr_accessor :balance
end
class SavingsAccount < Account #inheritance
  #constructor used when SavingAccount.new(...) called
  def initialize(starting_balance = 0)
    @balance = starting_balance
  end
  #attr_accessor :balance would replace the following two methods (getter and setter)
  def balance #instance method
    @balance #instance var: visible only to this object
  end
  def balance=(new_amount) #note method name like setter
    @balance = new_amount
  end
  def deposit(amount)
    @balance += amount
  end
  @@bank_name = "MyBank.com" # class static variable
  #class method
  def self.bank_name
    @@bank_name
  end
end
class Numeric #open class: adding methods to existing classes
  def dollars ; self ; end
  def euros ; self * 1.292 ; end
  def rupees ; self * 0.019 ; end
  def yen ; self * 0.013 ; end

  def in (currency)
    case currency.to_s
    when "dollars" then dollars
    when "euros" then euros
    when "rupees" then rupees
    when "yen" then yen
    when "euro" then euros
    when "dollar" then dollars
    when "rupee" then rupees

    else
      raise "Unknown currency #{currency}"
    end
  end
end

acct = SavingsAccount.new(100)
acct.deposit(20.euros)
puts acct.balance
puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
