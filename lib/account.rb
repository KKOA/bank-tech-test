class Account
  def initialize(date = Time.now.strftime('%d/%m/%Y'), amount = 0)
    @logs = [[date, amount.to_f, 0.00, amount]]
  end

  def get_balance
    @logs.last[3]
  end

  def deposit(amount, date = Time.now.strftime('%d/%m/%Y'))
    @logs << [date,amount.to_f,0.00,get_balance + amount]
    "#{amount} deposit. New balance is :#{get_balance}"
  end
end
