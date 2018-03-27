# Bank tech test at Makers Academy

## Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement she would see

```plain
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

#### Design

`Account` class:
* has a balance;
* creates an AccountLog - dependency injection;
* makes a deposit;
* makes a withdrawal;

`AccountLog` class:
* adds records to the history;
* has history of transactions;
* shows history of transactions;

#### Testing
* All tests passing;
* Coverage 100%;

#### Example of use:

```plain
> require_relative 'lib/account.rb'
 => true
> account = Account.new
 => #<Account:0x007fd7f406d730 @balance=0, @account_log=#<AccountLog:0x007fd7f406d708 @history=[]>>
> account.make_deposit(1000)
 => "Record has been added"
> account.make_deposit(2000)
 => "Record has been added"
> account.make_withdrawal(500)
 => "Record has been added"
> account.account_log.history
 => [{:date=>#<Date: 2018-03-27 ((2458205j,0s,0n),+0s,2299161j)>, :credit=>1000, :debit=>0, :balance=>1000}, {:date=>#<Date: 2018-03-27 ((2458205j,0s,0n),+0s,2299161j)>, :credit=>2000, :debit=>0, :balance=>3000}, {:date=>#<Date: 2018-03-27 ((2458205j,0s,0n),+0s,2299161j)>, :credit=>0, :debit=>500, :balance=>2500}]
> account.account_log.show_log
date | credit | debit | balance
2018-03-27 | 0 | 500 | 2500
2018-03-27 | 2000 | 0 | 3000
2018-03-27 | 1000 | 0 | 1000
 => [nil, nil, nil]
2.4.1 :008 >
```
