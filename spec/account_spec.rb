require 'account'

describe Account do

  subject(:account) { described_class.new }

  context 'Initialization' do
    describe '#initialize' do
      it 'has a balance of 0' do
        expect(account.balance).to eq 0
      end
    end
  end

end
