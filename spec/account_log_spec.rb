require 'account_log'

describe AccountLog do

  subject(:account_log) { described_class.new }

  context 'Initialization' do
    describe '#initialize' do
      it 'has an empty array - history of transactions' do
        expect(account_log.history).to eq []
      end
    end
  end

end
