Feature:  As a user
          I would like to create a resume
          so I can get that job I really want

Background:
  Given I am a registered user
  Given I have achievements

Scenario: Generate a resume template
  Given I am on the resumes page
  When  I follow "New Resume"
  Then  I should be on the new resume page
  And   I should see a basic resume
  And   I should see a list of my achievements

Scenario: Saving a resume
  Given I am on the new resume page
  When  I fill in "resume_title" with "My Resume"
  And   I press "Create"
  Then  my resume is saved
  And   I am on my resume's page
  And   I see my resume's title