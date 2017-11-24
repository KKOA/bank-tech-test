class Account
  def initialize(date = Time.now.strftime('%d/%m/%Y'), amount = 0)
    @log = [[date, amount.to_f, 0.00, amount]]
  end

  def get_balance
    @log.last[3]
  end
end
