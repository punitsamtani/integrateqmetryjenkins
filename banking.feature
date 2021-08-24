Feature: Banking
  As a user
  I want to use a ATM Trasanction

    @requirementKey=PM-28
    @testEntityKey=PM-TC-21
    Scenario: Withdraw less money
    Given I have $4000 on my account
    When I withdraw $500
    Then I get $500 from the ATM

    @requirementKey=PM-28
    @testEntityKey=PM-TC-22
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $1000 from the ATM
	
    @requirementKey=PM-28
    @testEntityKey=PM-TC-23
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 500 | 50 | 50 |
	| 1000 | 100 | 100 |
	| 300 | 75 | 75 |