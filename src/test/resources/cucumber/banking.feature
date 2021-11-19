Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @requirementKey=ALM-RQ-2
    @testEntityKey= ALM-TC-4
    Scenario: Withdraw less money
    Given I have $1100 on my account
    When I withdraw $500
    Then I get $500 from the ATM
    
    @requirementKey=ALM-RQ-4
    @testEntityKey= ALM-TC-7
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $300 from the ATM
    
    @requirementKey=ALM-RQ-5
    @testEntityKey= ALM-TC-9
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 50 | 50 |
	| 100 | 60 | 60 |
	| 300 | 75 | 60 |
