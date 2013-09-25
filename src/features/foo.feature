#encoding: utf-8
Feature: Foo.rb test. Seeing if a file would load.
 
  Scenario: hello
    Given a call to hello
    When I call the hello method
    Then I get the response world
    
  Scenario: plus_two
    Given a call to plus_two
    When I call plus_two with 8 as the argument
    Then I get 10 as the response