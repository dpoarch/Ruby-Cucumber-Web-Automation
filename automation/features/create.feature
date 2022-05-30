Feature: Create Sample application
    Scenario: Should be able to Create a new article records
        Given I am on the articles list
        When I click Create Articles
        Then Redirect to new articles