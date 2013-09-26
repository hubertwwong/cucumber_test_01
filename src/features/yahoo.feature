#encoding: utf-8
Feature: yahoo.com test
 
  Scenario: searching yahoo
  	Given I am on the page "http://www.yahoo.com"
  	When I fill in "field" with "dogs"
  	Then I should see "Wikipedia"