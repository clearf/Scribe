
Then(/^I fill in the post topic$/) do
  fill_in 'post_topic', with: 'topic'
end

Then(/^I click on create Post$/) do
  click_on "Create Post"
end

Then(/^I should see new comment$/) do
  page.should have_content('New Comment')
end

Then(/^I click on new comment$/) do
  click_link 'New Comment'
end

Then(/^I should see description$/) do
  page.should have_content('Description')
end

When(/^I fill in description$/) do
  fill_in 'comment_description', with: 'description'
end

When(/^click on the create comment button$/) do
  click_on 'Create Comment'
end

Then(/^I should see my comment$/) do
  page.should have_content('description')
end
