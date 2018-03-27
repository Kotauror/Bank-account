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

end
