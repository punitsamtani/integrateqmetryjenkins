Feature: Banking
  As a user
  I want to use a ATM Trasanction
@author:punit.samtani
@description:punittestingdescriptioninqtm881

    Scenario: Withdraw less money
    Given I have $2000 on my account
    When I withdraw $1000
    Then I get $1000 from the ATM

@author:Julee
@description:punittestingdescriptioninqtm881

    Scenario: Withdraw more money
    description:Punits Test
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $2000 from the ATM
	
@author:Jatin
@description:punittestingdescriptioninqtm881
    
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 500 | 50 | 50 |