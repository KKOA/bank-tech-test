class Printer
  def initialize(logs)
    @logs = logs
  end

  def format_header
    header = "Date | Credit | Debit | Balance\n"
  end

  def print
    return 'No transactions' if @logs.count.zero?
    statement = ''
    @logs.reverse.each do |log|
      statement += "#{log[0]} | #{format('%.2f', log[1])} "
      statement += "| #{format('%.2f', log[2])} | #{format('%.2f', log[3])} \n"
    end
    format_header + statement
  end
end
