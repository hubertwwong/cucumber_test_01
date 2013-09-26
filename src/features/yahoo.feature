#encoding: utf-8
Feature: yahoo.com test
 
  Scenario: searching yahoo
  	Given I am on the page "http://www.yahoo.com"
  	When I fill in "dogs" in the "//form[@class='search-form']//input[@name='p']" field using xpath
  		And I click on "Search"
  	Then I should see "Wikipedia" on the page
  		And I should see "foo" on the page