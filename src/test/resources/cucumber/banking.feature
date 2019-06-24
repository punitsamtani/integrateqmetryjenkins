Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=QS-RQ-30
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $900
    Then I get $900 from the ATM
    
    @requirementKey=QS-RQ-30
    Scenario: Withdraw more money
 	Given I have $300 on my account
	When I withdraw $400
	Then I get $100 from the ATM
    
    @requirementKey=QS-RQ-30
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 100 | 100 |