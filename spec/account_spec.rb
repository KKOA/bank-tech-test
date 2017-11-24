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
end
