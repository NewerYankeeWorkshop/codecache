Feature: Share killer code snippet with the world
  In order to demonstrate my skills
  As a developer
  I want to create a web page with a code snippet

  Scenario: Share new snippet
    Given I am on the new snippet page
    When I fill in "Title" with "My Hello World Example"
    And I fill in "Body" with "puts 'Hello World'"
    And I press "Create"
    Then I should see "My Hello World Example"
    And I should see "puts 'Hello World'"

  Scenario: Review snippets
    Given the following snippets:
      | title | body |
      | one   | 1*1  |
      | two   | 1+1  |
    And I am on the snippets page
    When I follow "one"
    Then I should see "one"
    And I should see "1*1"

