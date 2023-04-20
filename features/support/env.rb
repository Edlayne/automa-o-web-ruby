#Aqui nesse arquivo configuramos o ambiente do nosso projeto suas dependencias e afins.

require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

ENVIRONMENT = ENV['ENVIRONMENT']

puts "ENVIRONMENT is runner >>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yaml")
World(Pages, Helper)

Capybara.configure do |config|
    case ENV['BROWSER']
    when 'chrome_headless'
      config.default_driver = :selenium_chrome_headless
    when 'chrome'
      config.default_driver = :selenium_chrome
    when 'firefox_headless'
      config.default_driver = :selenium_headless
    when 'firefox'
      config.default_driver = :selenium
    end
    
    config.app_host = CONFIG['url_default']
    config.default_max_wait_time = 10
end