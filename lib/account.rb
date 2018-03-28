require_relative 'account_log'
require_relative 'printer'
require 'date'
require 'time'


class Account

  attr_reader :balance, :account_log

  def initialize
    @balance = 0
    @account_log = AccountLog.new
  end

  def make_deposit(number)
    @balance += number
    @account_log.add_record(time_now, number, 0, @balance)
  end

  def make_withdrawal(number)
    raise "You canot withdraw more than #{@balance} dolars." if @balance - number < 0
    @balance -= number
    @account_log.add_record(time_now, 0, number, @balance)
  end

  def time_now
    Time.now.to_date
  end

end
