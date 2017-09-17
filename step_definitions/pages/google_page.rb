require 'rubygems'
require 'selenium-webdriver'

class Google_page
  @@driver = Selenium::WebDriver.for :firefox, marionette: true

  def open_page
      @page = "https://www.google.com/"
      @@driver.navigate.to @page
  end

  def fill_search_bar(search)
      @search_element = "lst-ib"
      @@driver.find_element(:id,"#@search_element").send_keys(search)
  end

  def click_pesquisa_google
    @pesquisar_google_element = "btnK"
    @@driver.find_element(:name, "#@pesquisar_google_element").click
  end
end
