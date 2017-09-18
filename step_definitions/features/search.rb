require 'rubygems'
require './pages/google_page'
require './core/Read_Setup'

Given(/^We navigate to the Google home page/) do
  @Google = Google_page.new
  @Google.open_page
end

When(/^We search for the automação teste/) do
  arquivo_setup = Setup.Read("C:/Users/Fenix/Desktop/RUBY/PROJETOS/step_definitions/Files/Setup.txt")
  @Google.fill_search_bar("#{arquivo_setup['PESQUISAR']}")
end

Then(/^The results for the search will be displayed/) do
  @Google.click_pesquisa_google
end
