# allows cucumber to have rspec expectations.
require "rspec"
require 'rspec/expectations'

# to visit web pages.
require "capybara"
require 'capybara/cucumber'
require 'capybara/poltergeist'

# register the poltergist driver 
Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end
  