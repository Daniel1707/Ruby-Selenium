require 'rubygems'
require 'selenium-webdriver'

class Driver

  caps = Selenium::WebDriver::Remote::Capabilities.send("chrome")
  @@driver = Selenium::WebDriver.for(:remote, url: "http://192.168.99.100:4444/wd/hub", desired_capabilities: caps)

  def self.return_driver
    return @@driver
  end
end
