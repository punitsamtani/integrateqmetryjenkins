Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @requirementKey=MAC-RQ-171
    Scenario: Withdraw less money
    Given I have $2000 on my account
    When I withdraw $1000
    Then I get $4000 from the ATM
    
    @requirementKey=MAC-RQ-171
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $400 from the ATM
    
    @requirementKey=MAC-RQ-171
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 500 | 50 | 40 |