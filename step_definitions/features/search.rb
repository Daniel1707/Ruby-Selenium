require 'rubygems'
require './pages/google_page'

Given(/^We navigate to the phptravels home page/) do
  @Google = Google_page.new
  @Google.open_page
end

When(/^We search click on MY ACCOUNT$/) do |search_to_fill|
  @Google.fill_search_bar(search_to_fill)
  @Google.submit
end

And(/^Click on Sign Up$/) do |search_to_fill|
  @Google.fill_search_bar(search_to_fill)
  @Google.submit
end

And(/^Fill all the required fields$/) do |search_to_fill|
  @Google.fill_search_bar(search_to_fill)
  @Google.submit
end

And(/^Click on Sign Up$/) do |search_to_fill|
  @Google.fill_search_bar(search_to_fill)
  @Google.submit
end

Then(/^The system will show My Account/) do
  @Google.click_link_apinfo
end
