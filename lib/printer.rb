class Printer

  def initialize
  end

  def print_log(history)
    puts "date | credit | debit | balance"
    history.reverse.map { |hash|
      puts "#{hash[:date]} | #{hash[:credit]} | #{hash[:debit]} | #{hash[:balance]}"
    }
  end

end
