Given(/^I have a post$/) do
  @post = Post.create
end

Given(/^my post has topic "(.*?)"$/) do |topic|
  @post.topic = topic
  @post.save
end

Given(/^my post has comment "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^my post has author with name "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I go to the homepage$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
