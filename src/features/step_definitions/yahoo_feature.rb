Given(/^I am on the page "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  puts visit arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |element, text|
  find(:xpath, '//form[@class="search-form"]//input[@name="p"]').set(text)
  click_on "Search"
end
 
Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end