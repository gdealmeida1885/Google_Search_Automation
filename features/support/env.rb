require 'capybara/cucumber'
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'

#configurando o selenium com o capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Capybara Configs
Capybara.default_driver = :selenium
Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 20