class Printer
  def initialize(logs)
    @logs = logs
  end
  
  def print
    return 'No transactions' if @logs.count === 0
    header = "Date | Credit | Debit | Balance\n"
    statement = header
    @logs.each do |log|
      statement += "#{log[0]} "
      statement += "| #{format('%.2f', log[1])} "
      statement += "| #{format('%.2f', log[2])} "
      statement += "| #{format('%.2f', log[3])} \n"
    end
    statement
  end
end
