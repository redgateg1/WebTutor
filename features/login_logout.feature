Feature: User Authentication



Scenario: User logs in
Given a valid user
When I go to the login page
And I fill in "username" with "johnjohn"
And I fill in "password" with "password123K"
And I press "Log In"
Then I should be on the home page

