#encoding: utf-8
Feature: startpage.com test
 
  Scenario: searching yahoo
  	Given I am on the page "http://www.startpage.com"
  	When I fill in "dogs" in the "//input[@name='query']" field using xpath
  		And I click on "submit"
  	Then I should see "Wikipedia" on the page