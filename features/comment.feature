Feature: Be able to make edit destroy comments


Scenario: Create a new comment

Given I am on the tutorial page "tutorials/1"
When I fill in "Comment Body" with "I like this tutorial"
And I press "Add Comment"
Then I should be on the "tutorials/1" page
And I should see the my full name "Riad Jaradeh"
And I should see the posted time "posted a few seconds ago"
And I should see my comment nested under tutorial "Probability"

Scenario: Delete a comment

Given I am on the tutorial page "tutorials/1"
When I see the "Comment Body" filled with "I hate this course"
And I press "Delete Comment"
Then I should be on the "tutorials/1" page
And i can not see the comment "I hate this course"

Scenario: Edit a comment

Given I am on the tutorial page "tutorials/1"
When I fill in "Comment Body" with "I like ths tutorial"
And I press "Edit Comment"
Then I should be on the "tutorials/1/edit_comment" page
And I should be able to edit the comment to "I like this tutorial"
When I press "Update comment"
Then I should be on the "tutorials/1" page
And see the changes on my comment.

When I am on the tutorial page
And I comment "Nice one!" under a tutorial "Probability"
Then I should see "Riad Jaradeh posted a comment a few seconds ago"


