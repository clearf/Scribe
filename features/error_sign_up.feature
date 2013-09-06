Feature: Keeping the bad guys out
In order to keep this site professional
As someone who likes wandering on sites
I might just want to snoop without logging in

Scenario: Please sign up
Given I click sign up
When I click Create User without filling in info
Then I get an error