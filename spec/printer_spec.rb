require 'printer'
describe Printer do
  let(:account) { double :account }
  describe '#print_statement' do
    context 'no transactions' do
      it 'return no transcation' do
        allow(account).to receive(:history).and_return([])
        printer = Printer.new(account.history)
        result =  'No transactions'
        expect(printer.print).to eq result
      end
    end
    context 'transcation made' do
      let(:log1) { ['10/12/2017', 100, 0, 100] }
      let(:log2) { ['10/12/2017', 0, 50, 50] }
      it 'return single deposit transcation' do
        allow(account).to receive(:history).and_return([log1])
        printer = Printer.new(account.history)
        result = "Date | Credit | Debit | Balance\n10/12/2017 | 100.00 | 0.00 | 100.00 \n"
        expect(printer.print).to eq result
      end
      it 'return multiple transcation' do
        allow(account).to receive(:history).and_return([log1, log2])
        printer = Printer.new(account.history)
        result =  "Date | Credit | Debit | Balance\n10/12/2017 | 0.00 | 50.00 | 50.00 \n"
        result += "10/12/2017 | 100.00 | 0.00 | 100.00 \n"
        expect(printer.print).to eq result
      end
    end
  end
end
