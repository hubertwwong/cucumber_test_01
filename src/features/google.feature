#encoding: utf-8
Feature: Google.com test
 
  Scenario: View home page
  	Given I am on the home page
  	When I fill in "q" with "dogs"
  	Then I should see "Google"