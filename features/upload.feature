Feature: Create Tutorial



Scenario: Create new tutorial
Given I am on the tutorials page
When I follow "New Tutorial"
When I fill in "Tutorial name" with "john"
And I select "Audio" from "tutorial[TutorialType]"
And I fill in "tutorial[tutorial_discription]" with "wordswords"
And I select "Math" from "tutorial[CategoryID]"
And I press "Create Tutorial"
Then I should be on the show page for "john"
And I should see "john"
And I should see "wordswords"

Scenario: Edit tutorial
Given a valid tutorial
When I am on the tutorial home page
And I should see "MathStuff"
When I go to the edit page for "MathStuff"
And I fill in "Tutorial name" with "Math Education"
And I press "Update Tutorial"
Then I should be on the show page for "Math Education"
And I should see "Math Education"

