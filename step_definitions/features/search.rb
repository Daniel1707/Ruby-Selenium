require 'rubygems'
require './support/pages/google_page'

Given(/^We navigate to the Catho home page/) do
  @teste = Google_page.new
  @teste.open_page
end

When(/^We search for the automação teste/) do
  @teste.fill_office
  @teste.click_buscar
end

Then(/^The results for the search will be displayed/) do

end
