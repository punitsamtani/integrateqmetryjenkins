Feature: Banking
  As a user
  I want to use a ATM Trasanction

    Scenario: Withdraw less money
    Given I have $2000 on my account
    When I withdraw $500
    Then I get $500 from the ATM

    Scenario: Withdraw more money
 	  Given I have $150 on my account
	  When I withdraw $2000
	  Then I get $0 from the ATM
	
	  Scenario Outline: Withdraw money from the account
 	  Given I have $<balance> on my account
	  When I withdraw $<withdraw>
	  Then I get $<received> from the ATM

  	Examples:
  	| balance| withdraw | received |
	  | 500 | 50 | 50 |
	  | 1000 | 100 | 100 |
	  | 300 | 40 | 50 |