
Feature: Update User

Scenario: Update existing user
Scenario: User logs in
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
When I follow "My Profile"
Then I should be on the profile page for "johnjohn"
When I follow "Edit Profile"
And I fill in "Username" with "johnyo"
And I press "Update User"
Then I should see "User was successfully updated."
