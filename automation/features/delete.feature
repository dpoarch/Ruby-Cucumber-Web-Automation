Feature: Delete Sample application
    Scenario: Should be able to Delete the article records
        Given I click one article records
        When I Delete article record
        Then Navigate back to articles