require_relative '../../main/foo'

Given(/^a call to hello$/) do
  #pending # express the regexp above with the code you wish you had
end

When(/^I call the hello method$/) do
  @hello = Foo.hello
end

Then(/^I get the response (\w+)$/) do |arg1|
  @hello.should == arg1
end

Given(/^a call to plus_two$/) do
  #pending # express the regexp above with the code you wish you had
end

When(/^I call plus_two with (\d+) as the argument$/) do |arg1|
  @plus_two = Foo.plus_two(arg1)
end

Then(/^I get (\d+) as the response$/) do |arg1|
  @plus_two.should == arg1.to_i
end