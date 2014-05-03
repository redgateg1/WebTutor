Feature: Be able to make edit destroy comments


Scenario: Create a new comment

Scenario: View tutorial
Given a valid tutorial
When I am on the tutorial home page
And I should see "MathStuff"
When I go to the show page for "MathStuff"
And I fill in "New Comment" with "This was helpful"
And I press "Add Comment"
Then I should see "This was helpful"


Scenario: Delete a comment
Given a valid tutorial
When I am on the tutorial home page
And I should see "MathStuff"
When I go to the show page for "MathStuff"
And I fill in "New Comment" with "This was helpful"
And I press "Add Comment"
Then I should see "This was helpful"
When I follow "Delete"
Then I should not see "This was helpful"

