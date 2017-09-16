require 'rubygems'
require 'selenium-webdriver'

class Google_page
  @@driver = Selenium::WebDriver.for :firefox, marionette: true

  def open_page
    begin
      @page = "https://www.catho.com.br/"
      @@driver.navigate.to @page
    rescue
      puts "Was not possible to navigate to #@page"
    end
  end

  def fill_office
    begin
      @search_element = "cargoDesejado"
      @@driver.find_element(:id,"#@search_element").send_keys("automação teste")
    rescue
      puts "Was not possible to find the element #@search_element"
    end
  end

  def click_buscar

    @buscar_element = "//*[@id='formBuscaVagas']/div[2]/input"
    @@driver.find_element(:xpath, "#@buscar_element").click
  end

end
