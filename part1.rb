class BankAccount

  @@interest_rate = 0.2
  @@accounts = []

  def initialize
    @balance = 0

  end

  def balance
    @balance
  end

  # def balance=(balance)
  #   @balance = balance
  # end

  def deposit(num)
    @balance += num
  end

  def withdraw(num)
    @balance -= num
  end

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account
    return new_account
  end

  def self.total_funds
    sum = 0
    @@accounts.each do |account|
      sum += account.balance
    end
    puts "#{sum}"
  end

  def self.interest_time
    interest = 0.0
    @@accounts.each do |num|
      interest = num.balance * @@interest_rate
    end
    puts "#{interest}"
  end
end

me = BankAccount.create
you = BankAccount.create

me.deposit(5000)
you.deposit(2000)

me.withdraw(1000)
you.withdraw(1000)
