Given(/^a cucumber that is (\d+) cm long$/) do |orig_len|
  # init here.
  @cucumber = {:color => 'green', :length => orig_len.to_i}
end

When(/^I cut it in halves$/) do
  @choppedCucumbers = [
    {:color => @cucumber[:color], :length => @cucumber[:length] / 2},
    {:color => @cucumber[:color], :length => @cucumber[:length] / 2}
  ]
end

Then(/^I have two cucumbers$/) do
  result = @choppedCucumbers.length
  result.should == 2
end

Then(/^both are (\d+) cm long$/) do |final_len|
  @choppedCucumbers.each do |cuke|
    cuke[:length].should == final_len.to_i
  end
end