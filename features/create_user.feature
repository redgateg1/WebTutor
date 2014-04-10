Feature: Create User



Scenario: Create new user
Given I am on the create new user page
When I fill in "First name" with "john"
And I fill in "Last name" with "smith"
And I fill in "Username" with "johnjohn"
And I fill in "Password digest" with "password123K"
And I fill in "User role" with "student"
And I press "Create User"
Then I should be on the login page
When I am on the user page
Then I should see "john"
And I should see "smith"
And I should see "johnjohn"

