Feature: Search for content



Scenario: Search for tutorial
Given a valid tutorial
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
When I fill in "search" with "MathStuff"
And I press "Search"
Then I should see "MathStuff"
