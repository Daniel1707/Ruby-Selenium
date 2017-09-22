require 'rubygems'
require './pages/google_page'
require './core/Read_setup'

Given(/^We navigate to the Google home page/) do
  @Google = Google_page.new
  @Google.open_page
end

When(/^We search for (.*)$/) do |search_to_fill|
  #arquivo_setup = Setup.Read("C:/Users/Fenix/Desktop/RUBY/PROJETOS/step_definitions/Files/Setup.txt")
  @Google.fill_search_bar(search_to_fill)
  @Google.click_pesquisa_google
end

Then(/^The results for the search will be displayed/) do
  
end
