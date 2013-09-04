Given(/^I go to the main page$/) do
  visit "/"
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content('Scribe')
end
