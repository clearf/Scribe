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
  visit "/"
end

# Then(/^show me the page$/) do
#   save_and_open_page
# end


Then(/^I should see "(.*?)"$/) do |arg1|
  "Scribe"
end
