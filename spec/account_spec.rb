require 'account'
require 'timecop'
describe Account do
  subject(:account) { described_class.new }
  let(:amount1) { 100 }
  describe '#get_balance' do
    context 'No transcation' do
      it 'return startup balance' do
        expect(account.get_balance).to eq 0.0
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
end
