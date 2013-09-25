Given(/^I visit google\.com$/) do
  # pending # express the regexp above with the code you wish you had
  puts visit "http://www.google.com"
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |element, text|
  fill_in element, with: text
end
 
Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content text
end