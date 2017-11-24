require 'account'
require 'timecop'
describe Account do
  subject(:account) { described_class.new }
  let(:amount1) { 1000 }
  let(:amount2) { 250 }
  describe '#get_balance' do
    context 'No transcation' do
      it 'return startup balance' do
        expect(account.get_balance).to eq 0.0
      end
      it 'return current balance' do
        account.deposit(amount1)
        account.withdraw(amount2)
        expect(account.get_balance).to eq 750.0
      end
    end
  end
  describe '#deposit' do
    it 'return transcations confirmation message' do
      message = "#{amount1} deposited. New balance is :#{amount1}"
      expect(account.deposit(amount1)).to eq message
    end
  end
  describe '#withdraw' do
    it 'return transcations confirmation message' do
      message = "#{amount1} withdrawn. New balance is :#{-amount1}"
      expect(account.withdraw(amount1)).to eq message
    end
  end
  describe '#logs' do
    context 'No transcation made' do
      it 'return account log' do
        result = [['24/11/2017', 0.0, 0.0, 0.0]]
        expect(account.logs).to eq result
      end
    end
    context 'transcation' do
      it 'return account log' do
        account.deposit(amount1)
        account.withdraw(amount2)
        result = [
          ['24/11/2017', 0.0, 0.0, 0.0],
          ['24/11/2017', 1000.0, 0.0, 1000.0],
          ['24/11/2017', 0.0, 250.0, 750.0]
        ]
        expect(account.logs).to eq result
      end
    end
  end
end
