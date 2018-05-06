require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'selenium-webdriver'
require 'pry'


Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    Capybara.default_driver = :selenium
    config.default_max_wait_time = 15
    Capybara.ignore_hidden_elements = false
    Capybara.page.driver.browser.manage.window.maximize
end