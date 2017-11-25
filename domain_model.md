# User Stories to Domain Model

## Scenario

### 1.
As customer,

so that I can start depositing money to an account

I want to be able to create an account

### 2.
As a account holder,

so that I can see how much money I have

I want to see my account balance

### 3.
As account holder,

so that I can put money in my account

I want to be able to deposit money.

### 4.
As account holder,

so that I can purchase make an item

I want to be able to make a withdraw

### 5.
As account holder,

so that I can keep of my transactions

I want to able print my account statement

```
Date       | Credit  | Debit  | Balance
-----------|---------|--------|--------
14/01/2012 | 0.0     | 500.00 | 2500.00
13/01/2012 | 2000.00 | 0.0    | 3000.00
10/01/2012 | 1000.00 | 0.0    | 1000.00
```

## Nouns in User Stories
- customer
- Account
- printer

## Verbs in User Stories
- deposit
- withdrawal
- get balance
- print
 
##  Functional representation of that story

| Objects         | Messages                              |
|-----------------|---------------------------------------|
| customer        |                                       |
| Account         | Deposit<br>withdrawal<br>get_balance  |
| Printer         | print_statement                       |    

## How our Objects will use Messages to communicate with one another

Account <-- deposit --> message

Account <-- withdrawal --> message

Account <-- get_balance -- > balance

Printer <-- print --> formatted statement

