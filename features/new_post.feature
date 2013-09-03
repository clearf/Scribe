Feature: New Post
In order to create a new post
As a user
I want click a new topic button

Scenario: Show
Given I click the new post button
And my post has topic "Labor Day"
And my post has comment "Labor Day is the first Monday in September"
And my post has user with name "Eric Gong"
When I go to the homepage
Then I should see "Scribe"
And I should see "Labor Day is the first Monday in September"
And I should see "Eric Gong"
