require 'rubygems'
require './pages/google_page'

Given(/^We navigate to the Google home page/) do
  @Google = Google_page.new
  @Google.open_page
end

When(/^We search for (.*)$/) do |search_to_fill|
  @Google.fill_search_bar(search_to_fill)
  @Google.submit
end

Then(/^The results for the search will be displayed/) do
  @Google.click_link_apinfo
end
