require_relative 'account_log'

class Account

  attr_reader :balance, :account_log

  def initialize
    @balance = 0
    @account_log = AccountLog.new
  end

end
