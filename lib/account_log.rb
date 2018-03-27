require 'date'

class AccountLog

  attr_reader :history

  def initialize
    @history = []
  end

  def add_record(date, credit, debit, balance)
    hash = Hash.new
    hash[:date] = date
    hash[:credit] = credit
    hash[:debit] = debit
    hash[:balance] = balance
    @history << hash
  end

  def show_log
    puts "date | credit | debit | balance"
    @history.reverse.map { |hash|
      puts "#{hash[:date]} | #{hash[:credit]} | #{hash[:debit]} | #{hash[:balance]}"
    }
  end

end
