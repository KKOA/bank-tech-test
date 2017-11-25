# Bank-tech-test

The objective of this tech test was build a REPL application based on the following specification

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

## [My Domain Model](https://github.com/KKOA/bank-tech-test/blob/master/domain_model.md)

## Technologies
- Ruby
- Rspec
- Rubocop

## Set up Appplication
In terminal / command line enter following commands
```
git clone https://github.com/KKOA/bank-tech-test
cd bank-tech-test
bundle install
```

## Run in the terminal/command prompt:

 ```
 cd bank-tech-test
 irb
 ```
 Create a bank account by creating an instance of the bank account constructor object.
 The constructor takes two optional arguments.
 - start balance
 - date account created
```
account = Account.new([start_balance,date]);
```
If no arguments are submitted then account is created balance of 0 and date created as today date in day/month/year format.

Account Class has 3 methods
- deposit
- withdraw
- current_balance

Both deposit and withdraw take mandatory amount argument and optional date of transcation.
Date of transcation by default is current date.
Current does not require any argument and returns the current balance
```
account.deposit(amount[,date])
account.withdraw(amount[,date])
account.current_balance()
```
To print account statement you must creating an instance of the printer constructor object and pass an account as argument. You can then call print on the object to output the account statement.
```
printer = Printer.new(account)
puts printer.print()
```

## Screenshot

![sample execution from terminal](https://github.com/KKOA/bank-tech-test/blob/master/ScreenShot.png)

## To view the rspec test

There are two ways to view test
### 1. In terminal/command prompt
```
cd bank-tech-test
rspec
```
### 2. In browser
Open coverage directory inside project
Open coverage/index.html

## Author
[Keith Amoah](https://github.com/KKOA)
