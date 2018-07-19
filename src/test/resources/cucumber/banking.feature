Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @requirementKey=BAN-RQ-1
    Scenario: Withdraw less money
    Given I have $600 on my account
    When I withdraw $100
    Then I get $100 from the ATM
    
    @requirementKey=BAN-RQ-1
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $200
	Then I get $0 from the ATM
    
    @requirementKey=BAN-RQ-1
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 100 | 100 |
	| 50 | 100 | 0 |