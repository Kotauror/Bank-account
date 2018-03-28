require 'printer'

describe Printer do

  subject(:printer) { described_class.new }

  context 'Showing the records' do
    describe '#print_log' do
      it 'prints the log' do
        expect{printer.print_log([{:date=> 112, :credit=>500, :debit=>0, :balance=>500}, {:date=> 112, :credit=>0, :debit=>200, :balance=>300}])}.to output("date | credit | debit | balance\n112 | 0 | 200 | 300\n112 | 500 | 0 | 500\n"
        ).to_stdout
      end
    end
  end

end
