require 'rubygems'
require './core/driver'

class Home_Page

  @driver = Driver.return_driver

  def open_page

    page = "http://automationpractice.com/index.php"

    begin
      @driver.navigate.to @page
    rescue Exception => e
      puts "There is an error to open the page #{page}. #{e}"
    end
  end

  def fill_search_bar(search)

    @search_element = "lst-ib"

    begin
      @driver.find_element(:id,"#@search_element").send_keys(search)
    rescue Exception => e
      puts "There is an error to fill search bar with the id #{@search_element}. #{e}"
      @driver.save_screenshot('Caso teste/search google/Bug/Method - fill_search_bar.png')
    end
  end

  def submit

    begin
      @driver.action.send_keys("\n").perform
    rescue Exception => e
      puts "There is an error to submit the form. #{e}"
      @driver.save_screenshot('Caso teste/search google/Bug/Method - submit.png')
    end
  end

  def click_link_apinfo

    @link = "APinfo - O ponto de encontro dos profissionais de informática"

    begin
        @driver.find_element(:link_text, @link).click
        @driver.save_screenshot('Caso teste/search google/Imagens/Method - click_link.png')
    rescue Exception => e
      puts "There is an error to click on the link #{@link}. #{e}"
      @driver.save_screenshot('Caso teste/search google/Bug/Method - click_link.png')
    end
  end

end
