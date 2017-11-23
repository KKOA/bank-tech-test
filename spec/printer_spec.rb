require 'printer'
describe Printer do
  describe '#print_statement' do
    context 'no transactions' do
      it 'return no transcation' do
        logs = []
        printer = Printer.new(logs)
        result =  'No transactions'
        expect(printer.print).to eq result
      end
    end
    context 'transcation made' do
      it 'return single deposit transcation' do
        logs = [['10/12/2017', 100, 0, 100]]
        printer = Printer.new(logs)
        result = "Date | Credit | Debit | Balance\n"
        result += "10/12/2017 | 100.00 | 0.00 | 100.00 \n"
        expect(printer.print).to eq result
      end
      it 'return multiple transcation' do
        logs = [
          ['10/12/2017', 100, 0, 100],
          ['10/12/2017', 0, 50, 50]
        ]
        printer = Printer.new(logs)
        result =  "Date | Credit | Debit | Balance\n"
        result +=  "10/12/2017 | 100.00 | 0.00 | 100.00 \n"
        result +=  "10/12/2017 | 0.00 | 50.00 | 50.00 \n"
        expect(printer.print).to eq result
      end
    end
  end
end
