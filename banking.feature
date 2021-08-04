Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @storykey=SUPPORT-55
    @testcasekey=SUPPORT-TC-58903
    @testcasekey=SUPPORT-TC-58904
    @testcasekey=SUPPORT-TC-58905
    Scenario: Withdraw less money
    Given I have $2000 on my account
    When I withdraw $1000
    Then I get $1000 from the ATM
    
    @storykey=SUPPORT-55
    @testcasekey=SUPPORT-TC-58906
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $200 from the ATM
    
    @storykey=SUPPORT-55
    @testcasekey=SUPPORT-TC-58907
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 500 | 50 | 50 |