require 'rubygems'
require 'selenium-webdriver'

class Driver

  @brownser = "firefox"

  def initialize(brownser)
    @brownser = brownser
  end

  caps = Selenium::WebDriver::Remote::Capabilities.send(@brownser)
  @driver = Selenium::WebDriver.for(:remote, url: "http://192.168.99.100:4444/wd/hub", desired_capabilities: caps)

  def self.return_driver
    return @driver
  end
end
