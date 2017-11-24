require 'account'
require 'timecop'

describe Account do
  subject(:account) { described_class.new }
  describe '#get_balance' do
    context 'No transcation' do
      it 'return startup balance' do
        expect(account.get_balance).to eq 0.0
      end
    end
  end
  describe '#deposit' do
    it 'Transcations confirmation message' do
      amount = 100
      message = "#{amount} deposit. New balance is :#{amount}"
      expect(account.deposit(amount)).to eq message
    end
  end
end
