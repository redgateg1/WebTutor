Feature: Create User



Scenario: Create new user
Given I am on the create new user page
When I fill in "First name" with "john"
And I fill in "Username" with "johnjohn"
And I fill in "Last name" with "smith"
And I fill in "Password" with "password123K"
And I press "Create User"
Then I should be on the login page
