Given(/^I'm on the index page$/) do
  visit "/posts"
end

When(/^I click new post$/) do
  click_on 'New Post'
end

Then(/^I should see the new topic page$/) do
  page.should have_content('Topic')
end