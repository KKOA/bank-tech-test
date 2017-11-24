# Bank-tech-test

This my submission for the Bank tech test based on specification below.

## Specification

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Screenshot

![sample execution from terminal](https://github.com/KKOA/bank-tech-test/blob/master/ScreenShot.png)




<!-- Add link domain model [domain model](domain_model) -->

## Technologies
- Ruby
- Rspec
- Rubocop

## Run application( command / terminal only )

```
git clone https://github.com/KKOA/bank-tech-test
cd bank-tech-test
irb
require './lib/account'
require './lib/printer'
account = Account.new
```
To add money pass an amount as argument to account.deposit().
To remove money pass an amount as argument to account.withdraw().
Date is optional argument and must be day/month/year format.
If no date is submitted then current date is assigned.

E.g.
```
account.deposit(350) #submit current date 
account.deposit(450,'12/10/2017') # 12/10/2017 is used as the date
account.withdraw(125)
```

To view account print an account statement pass account.history as an argument to Printer.

E.g
```
printer = print.New(account.history)
puts printer.print
```

## To view the rspec test

There are two ways to view test
### 1. In terminal/command prompt
Type following into terminal/command prompt
```
cd bank-tech-test
rspec
```
### 2. In browser
Open coverage directory inside project
Open coverage/index.html

## Author
[Keith Amoah](https://github.com/KKOA)
