class Account
  attr_reader :logs
  def initialize(date = Time.now.strftime('%d/%m/%Y'), amount = 0)
    @logs = [[date, amount.to_f, 0.00, amount]]
  end

  def get_balance
    @logs.last[3]
  end

  def deposit(amount, date = Time.now.strftime('%d/%m/%Y'))
    @logs << [date, amount.to_f, 0.00, get_balance + amount]
    "#{amount} deposited. New balance is :#{get_balance}"
  end

  def withdraw(amount, date = Time.now.strftime('%d/%m/%Y'))
    @logs << [date, 0.00, amount.to_f, get_balance - amount]
    "#{amount} withdrawn. New balance is :#{get_balance}"
  end
end
