
Feature: Update User

Scenario: Update existing user
Given I am on the home page
When I click on "update profile"
And I change the "First name" from "Rio" to "Riad"
And I change the "Last name" from "Jar" to "Jaradeh"
And I change the "Password" from "mypass" to "mypass#"
And I press "Update Information"
Then I should be on the home page
