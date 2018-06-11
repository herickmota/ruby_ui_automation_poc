require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

# Capybara.configure do |config|
#   config.default_driver = :selenium_chrome
#   config.app_host = 'https://qavat.sovos.com'
# end
#
# Capybara.default_max_wait_time = 5

ENVIRONMENT_TYPE ||= ENV['ENVIRONMENT_TYPE']
CONFIG_UI = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yaml")

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
# Capybara.default_max_wait_time = 70
