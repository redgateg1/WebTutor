
Feature: Update User


Scenario: User views profile
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
When I go to the profile page for "johnjohn"
Then I should see "dsadsa"


Scenario: User who is owner can see all profiles
Given a valid owner
When I go to the login page
And I fill in "Username" with "owner"
And I fill in "Password" with "lol123"
And I press "Log In"
Then I should be on the owner home page
When I go to the user page
Then I should see "dsadsa"

Scenario: User who is student can't see all profiles
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
When I go to the user page
Then I should see "The page you were looking for is not available"


Scenario: Update existing user
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
