#encoding: utf-8
Feature: cars.rb
  cars.rb represent a simple car model that allows you to drive in NSEW direction.
  it also tracks the results.
 
  Scenario: 2 car
    Given a list of cars
    	| name | speed |
    	| foo  | 10    |
    	| bar  | 5     |
    When the cars move
    	| name | direction | time |
    	| foo  | n         | 1    |
    	| bar  | e         | 3    |
    Then I get new coordinates for the cars
    	| name | pos_x | pos_y |
    	| foo  | 0     | 10    |
    	| bar  | 15    | 0     |