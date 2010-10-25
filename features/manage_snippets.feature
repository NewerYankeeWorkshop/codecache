Feature: Manage snippets
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new snippet
    Given I am on the new snippet page
    When I fill in "Title" with "title 1"
    And I fill in "Body" with "body 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "body 1"

