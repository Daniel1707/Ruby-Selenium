require 'rubygems'
require 'selenium-webdriver'

class Google_page
  caps = Selenium::WebDriver::Remote::Capabilities.send("chrome")
  #@@driver = Selenium::WebDriver.for :firefox, marionette: true
  @@driver = Selenium::WebDriver.for(:remote, url: "http://192.168.99.100:4444/wd/hub", desired_capabilities: caps)

  def open_page

    @page = "https://www.google.com/"

    begin
      @@driver.navigate.to @page
    rescue Exception => e
      puts "There is an error to open the page #{@page}. #{e}"
    end
  end

  def fill_search_bar(search)

    @search_element = "lst-ib"

    begin
      @@driver.find_element(:id,"#@search_element").send_keys(search)
      @@driver.save_screenshot('teste.png')
    rescue Exception => e
      puts "There is an error to fill search bar with the id #{@search_element}. #{e}"
    end
  end

  def submit

    begin
      @@driver.action.send_keys("\n").perform
    rescue Exception => e
      puts "There is an error to submit the form. #{e}"
    end
  end
end
