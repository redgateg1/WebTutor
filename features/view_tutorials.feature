Feature: View tutorials


  Given the following tutorials exist:
  | tutorial_name                   | tutorial_path | category_id | tutorial_type | tutorial_discription | tutorial_teacher_name | tutorial_date_release 
  | Aladdin                 | huh.pdf      | 1 | math | blah | blahblah | 2014-05-25 | 
  | The Terminator          | what.mp3      | 1 | math | blah | blahblah | 2014-5-25 |
  | When Harry Met Sally    | why.mp4      | 1 | math | blah | blahblah | 2014-5-25 |
And  I am on the tutorial home page
And I should see "Aladdin"

Scenario: If tutorial is pdf
When I am on the tutorial with id one
Then the "Tutorial Path" field should have "pdf"
And I should see "Click to Download"
And I should not see "Click to play Audio"
And I should not see "Click to play Video"

Scenario: If tutorial is mp3
When I am on the tutorial with id two
Then the "Tutorial Path" field should have "mp3"
And I should see "Click to play Audio"
And I should not see "Click to Download"
And I should not see "Click to play Video"

Scenario: If tutorial is mp4
When I am on the tutorial with id two
Then the "Tutorial Path" field should have "mp4"
And I should see "Click to play Video"
And I should not see "Click to Download"
And I should not see "Click to play Audio"
