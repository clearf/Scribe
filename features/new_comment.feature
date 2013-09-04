Feature: New Post

Scenario: Posting
Given I'm on the index page
When I click new post
Then I should see the new topic page
And I fill in the post topic
And I click on create Post
Then I should see new comment
And I click on new comment
Then I should see description
When I fill in description
And click on the create comment button
Then I should see my comment