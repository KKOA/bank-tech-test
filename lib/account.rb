class Account
  attr_reader :logs
  def initialize(amount = 0, date = Time.now.strftime('%d/%m/%Y'))
    @logs = [[date, amount.to_f, 0.00, amount.to_f]]
  end

  def current_balance
    @logs.last[3]
  end

  def deposit(amount, date = Time.now.strftime('%d/%m/%Y'))
    @logs << [date, amount.to_f, 0.00, current_balance + amount]
    "#{amount} deposited. New balance is :#{current_balance}"
  end

  def withdraw(amount, date = Time.now.strftime('%d/%m/%Y'))
    @logs << [date, 0.00, amount.to_f, current_balance - amount]
    "#{amount} withdrawn. New balance is :#{current_balance}"
  end
end
