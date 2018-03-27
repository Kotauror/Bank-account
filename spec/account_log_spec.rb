require 'account_log'
require 'timecop'

describe AccountLog do

  subject(:account_log) { described_class.new }

  context 'Initialization' do
    describe '#initialize' do
      it 'has an empty array - history of transactions' do
        expect(account_log.history).to eq []
      end
    end
  end

  context 'Adding a new record' do
    describe '#add_record' do
      it 'adds a record of credit (+) to the history' do
        account_log.add_record(2017/03/06, 500, 0, 500)
        expect(account_log.history).to eq [{date: 2017/03/06, credit: 500, debit: 0, balance: 500}]
      end
      it 'adds a record of debit (-) to the history' do
        account_log.add_record(2017/03/06, 500, 0, 500)
        account_log.add_record(2017/03/06, 0, 200, 300)
        expect(account_log.history).to eq [{date: 2017/03/06, credit: 500, debit: 0, balance: 500}, {date: 2017/03/06, credit: 0, debit: 200, balance: 300}]
      end
      it 'informs that a record was added' do
        expect(account_log.add_record(2017/03/06, 500, 0, 500)).to eq "Record has been added"
      end
    end
  end

  context 'Showing the records' do
    describe '#show_log' do
      it 'shows the log' do
        account_log.add_record(2017/03/06, 500, 0, 500)
        account_log.add_record(2017/03/06, 0, 200, 300)
        expect{account_log.show_log}.to output("date | credit | debit | balance\n112 | 0 | 200 | 300\n112 | 500 | 0 | 500\n"
        ).to_stdout
      end
    end
  end

end
