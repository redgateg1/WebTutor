Feature: View tutorials



Scenario: View tutorial
Given a valid tutorial
When I am on the tutorial home page
And I should see "MathStuff"
When I go to the show page for "MathStuff"
Then I should see "You can download this too!"

