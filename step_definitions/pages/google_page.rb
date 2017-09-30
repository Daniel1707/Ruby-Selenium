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
    rescue Exception => e
      puts "There is an error to fill search bar with the id #{@search_element}. #{e}"
      @@driver.save_screenshot('Caso teste/search google/Bug/Method - fill_search_bar.png')
    end
  end

  def submit

    begin
      @@driver.action.send_keys("\n").perform
    rescue Exception => e
      puts "There is an error to submit the form. #{e}"
      @@driver.save_screenshot('Caso teste/search google/Bug/Method - submit.png')
    end
  end
end
