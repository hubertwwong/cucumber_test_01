#encoding: utf-8
Feature: Google.com test
 
  Scenario: searching google
  	Given I am on the page "http://www.google.com"
  	When I fill in "q" with "dogs"
  	Then I should see "Wikipedia"