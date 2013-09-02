Feature: Front Page
In order to tell visitors where they are
As a reader
I want the top posts to be on the main page

Scenario: 1 post
Given I have a post
And my post has topic "Labor Day"
And my post has comment "Labor Day is the first Monday in September"
And my post has user with name "Eric Gong"
When I go to the homepage
Then I should see "Scribe"
And I should see "Labor Day is the first Monday in September"
And I should see "Eric Gong"