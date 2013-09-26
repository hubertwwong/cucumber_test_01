Given(/^I am on the page "(.*?)"$/) do |arg1|
  puts visit arg1
end

When(/^I fill in "(.*?)" in the "(.*?)" field using xpath$/) do |arg1, arg2|
  find(:xpath, arg2).set(arg1)
end

When(/^I click on "(.*?)"$/) do |arg1|
  click_on arg1
end

Then(/^I should see "(.*?)" on the page$/) do |arg1|
  page.should have_content(arg1)
end