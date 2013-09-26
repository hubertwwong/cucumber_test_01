require_relative '../../main/car'

Given(/^a list of cars$/) do |table|
  cars_hash = table.hashes
  @cars = Hash.new
  cars_hash.each do |car_param|
    @cars[car_param["name"]] = Car.new(car_param["name"], car_param["speed"])
  end
end

When(/^the cars move$/) do |table|
  move_hash = table.hashes
  move_hash.each do |car_param|
    # update the positions
    cur_car = @cars[car_param["name"]]
    cur_car.move(car_param["direction"], car_param["time"])
    #puts ">>>"
    #puts cur_car.inspect
    # save the car back into the hash
    @cars[car_param["name"]] = cur_car
  end
  #puts @cars
end

Then(/^I get new coordinates for the cars$/) do |table|
  result_hash = table.hashes
  result_hash.each do |result_param|
    @cars[result_param["name"]].pos_x.to_i.should == result_param["pos_x"].to_i
    @cars[result_param["name"]].pos_y.to_i.should == result_param["pos_y"].to_i
  end
end