require 'date'
require_relative 'printer'

class AccountLog

  attr_reader :history, :printer

  def initialize
    @history = []
    @printer = Printer.new
  end

  def add_record(date, credit, debit, balance)
    hash = {
      :date => date,
      :credit => credit,
      :debit => debit,
      :balance => balance
    }
    # hash = Hash.new
    # hash[:date] = date
    # hash[:credit] = credit
    # hash[:debit] = debit
    # hash[:balance] = balance
    @history << hash
    return "Record has been added"
  end

  def show_log
    @printer.print_log(@history)
  end

end
