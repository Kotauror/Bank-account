require 'account'

describe Account do

  subject(:account) { described_class.new }

  context 'Initialization' do
    describe '#initialize' do
      it 'has a balance of 0' do
        expect(account.balance).to eq 0
      end
      it 'creates a new instance of AccountLog class' do
        expect(account.account_log).to be_a_kind_of AccountLog
      end
    end
  end

  context 'Deposition' do
    describe '#make_deposit' do
      it 'increases the balance by a given number' do
        account.make_deposit(50)
        expect(account.balance).to eq 50
      end
    end
  end

end
