Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=LUX-RQ-147
    Scenario: Withdraw less money
    Given I have $1000 on my account
    When I withdraw $500
    Then I get $500 from the ATM
    
    @requirementKey=LUX-RQ-147
    Scenario: Withdraw more money
 	Given I have $300 on my account
	When I withdraw $700
	Then I get $700 from the ATM
    
    @requirementKey=LUX-RQ-147
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 100 | 100 |