# allows cucumber to have rspec expectations.
require 'rspec'
require 'rspec/expectations'

# to visit web pages.
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'

# seems like if you use anything but selenium, you need rack.
#Capybara.default_driver = :selenium
#Capybara.javascript_driver = :webkit

# register the poltergist driver 
# DEFAULT: headless tests with poltergeist/PhantomJS
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(
    app,
    window_size: [1280, 1024],
    timeout: 120
    #debug:       true
  )
end
Capybara.default_driver    = :poltergeist
Capybara.javascript_driver = :poltergeist
#
#Capybara.app = MyRackApp