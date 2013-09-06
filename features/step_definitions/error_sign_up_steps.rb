Given(/^I click sign up$/) do
  visit "/"
  click_on 'Sign up'
end

When(/^I click Create User without filling in info$/) do
  click_on 'Create User'
end

Then(/^I get an error$/) do
  page.should have_content "Password can't be blank"
end

