Feature: Create Tutorial



Scenario: Create new tutorial
Given I am on the tutorials page
When I follow "New Tutorial"
When I fill in "Tutorial name" with "john"
And I select "Audio" from "tutorial[TutorialType]"
And I fill in "tutorial[tutorial_discription]" with "password123K"
And I select "Math" from "tutorial[CategoryID]"
And I press "Create Tutorial"
Then I should be on the show page for "john"
