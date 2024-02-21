class BankAccount
  def initialize(initial_balance)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
    log_transaction(amount, "deposit")
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      log_transaction(amount, "withdrawal")
    else
      puts "Insufficient funds."
    end
  end

  private

  def log_transaction(amount, action)
    puts "Logged #{action} of $#{amount}. New balance: $#{@balance}."
  end
end

account = BankAccount.new(1000)
account.deposit(500)
account.withdraw(200)
