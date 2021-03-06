Feature: Create Tutorial



Scenario: Create new tutorial

Given a valid owner
When I go to the login page
And I fill in "Username" with "owner"
And I fill in "Password" with "lol123"
And I press "Log In"
Then I should be on the owner home page
When I follow "Upload Tutorials"
And I fill in "Tutorial name" with "john"
And I select "Audio" from "tutorial[TutorialType]"
And I fill in "tutorial[tutorial_discription]" with "wordswords"
And I select "Math" from "tutorial[CategoryID]"
And I press "Create Tutorial"
Then I should be on the show page for "john"
And I should see "john"
And I should see "wordswords"

Scenario: Edit tutorial
Given a valid owner
When I go to the login page
And I fill in "Username" with "owner"
And I fill in "Password" with "lol123"
And I press "Log In"
Then I should be on the owner home page
Given a valid tutorial
When I am on the tutorial home page
And I should see "MathStuff"
When I go to the edit page for "MathStuff"
And I fill in "Tutorial name" with "Math Education"
And I press "Update Tutorial"
Then I should be on the show page for "Math Education"
And I should see "Math Education"



