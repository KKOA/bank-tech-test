require 'account'
require 'timecop'
describe Account do
  subject(:account) { described_class.new }
  let(:amount1) { 1000.0 }
  let(:amount2) { 250.0 }
  describe '#current_balance' do
    context 'No transcation' do
      it 'return startup balance' do
        expect(account.current_balance).to eq 0.0
      end
      it 'return current balance' do
        account.deposit(amount1)
        account.withdraw(amount2)
        expect(account.current_balance).to eq 750.0
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
    let(:time1){ Timecop.freeze(Time.local(2017, 11, 24)).strftime('%d/%m/%Y')}
    context 'No transcation made' do
      it 'return account log' do
        account = Account.new(0.0, '24/11/2017')
        result = [[time1, 0.0, 0.0, 0.0]]
        expect(account.logs).to eq result
      end
    end
    context 'transcation' do
      let(:time2){ Timecop.freeze(Time.local(2017, 11, 25)).strftime('%d/%m/%Y')}
      let(:time3){ Timecop.freeze(Time.local(2017, 11, 26)).strftime('%d/%m/%Y')}
      it 'return account log' do
        account = Account.new(0.0, time1)
        account.deposit(amount1, time2)
        account.withdraw(amount2, time3)
        result = [
          [time1, 0.0, 0.0, 0.0],
          [time2, 1000.0, 0.0, 1000.0],
          [time3, 0.0, 250.0, 750.0]
        ]
        expect(account.logs).to eq result
      end
    end
  end
end
