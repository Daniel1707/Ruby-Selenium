require 'rubygems'
require './pages/google_page'

Given(/^We navigate to the Google home page/) do
  @Google = Google_page.new
  @Google.open_page
end

When(/^We search for the automação teste/) do
  @Google.fill_search_bar("Automação teste")
end

Then(/^The results for the search will be displayed/) do
  @Google.click_pesquisa_google
end
