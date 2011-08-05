Feature:  As a user
          I would like to store an achievement
          so I record important career information
          ...in order to have it available for a resume

Background:
  Given I am a registered user

Scenario: Entering/storing an achievement
  Given I am on the achievements page
  When  I enter an achievement
  And   I press "Create Achievement"
  Then  my achievement is saved in the database
  And   I should be on the achievements page
  And   I see a confirmation message
  And   I should see my achievement in a list

