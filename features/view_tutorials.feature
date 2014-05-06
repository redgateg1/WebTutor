Feature: View tutorials



Scenario: View tutorial
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
Given a valid tutorial
When I am on the tutorial home page
And I should see "MathStuff"
When I go to the show page for "MathStuff"
Then I should see "MathStuff Description"
And I should see "MathStuff"
And I should see "Back"

Scenario: View math tutorials
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
Given a math tutorial
When I am on the math page
And I should see "MathStuff"

Scenario: View reading tutorials
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Given a reading tutorial
When I am on the reading page
And I should see "ReadingStuff"

Scenario: View writing tutorials
Given a valid user
When I go to the login page
And I fill in "Username" with "johnjohn"
And I fill in "Password" with "password123K"
And I press "Log In"
Then I should be on the home page
Given a writing tutorial
When I am on the writing page
And I should see "WritingStuff"




