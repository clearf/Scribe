Given(/^I have a post$/) do
  @post = Post.create
end

Given(/^my post has topic "(.*?)"$/) do |topic|
  @post.topic = topic
  @post.save
end

Given(/^my post has comment "(.*?)"$/) do |comment|
  @post.comments.create(description: comment)
  @post.save
end

Given(/^my post has user with name "(.*?)"$/) do |user|
  @user = User.new(name: user)
  @post.user = @user
  @post.save
end

When(/^I go to the homepage$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
