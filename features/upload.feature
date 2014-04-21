Feature: Create Tutorial



Scenario: Create new tutorial
Given I am on the tutorials page
When I press "New Tutorial"
When I fill in "Tutorial name" with "john"
And I fill in "Tutorial type" with "Audio"
And I fill in "Description" with "password123K"
And I fill in "Category" with "Math"
And I press "Create Tutorial"
Then I should be on the new page
