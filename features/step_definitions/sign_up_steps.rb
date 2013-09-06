Given(/^I am on the main page$/) do
  visit "/"
end

Given(/^I click on the sign up button$/) do
  click_on 'Sign up'
end

Then(/^I should be able to enter my info and sign up$/) do
  fill_in 'Name', with: 'Name'
  fill_in 'Email', with: 'Email'
  fill_in 'Password', with: 'Password'
  fill_in 'Password confirmation', with: 'Password'
  click_on 'Create User'
end

Then(/^I should see the welcome page$/) do
  page.should have_content 'Signed up!'
end

