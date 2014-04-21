Feature: User Authentication



Scenario: User logs in
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page

Scenario: User fails to log in
Given a valid user
When I go to the login page
And I fill in "username" with "johnjohn"
And I fill in "password" with "dsdsads2"
And I press "Log In"
Then I should be on the login page

Scenario: User logs out
Given a valid user
When I go to the login page
And I fill in "username" with "johnjohn"
And I fill in "password" with "password123K"
And I press "Log In"
Then I should be on the home page
When I follow "Logout"
Then I should be on the login page

Scenario: No valid session
When I go to the home page
Then I should see "Registration Form"
And I should be on the login page


