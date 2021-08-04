Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @storykey=T2021-1
    @testcasekey=T2021-TC-1
    @testcasekey=T2021-TC-2
    @testcasekey=T2021-TC-3
    Scenario: Withdraw less money
    Given I have $2000 on my account
    When I withdraw $1000
    Then I get $1000 from the ATM
    
    @storykey=T2021-1
    @testcasekey=T2021-TC-4
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $200 from the ATM
    
    @storykey=T2021-1
    @testcasekey=T2021-TC-5
    Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 500 | 50 | 50 |