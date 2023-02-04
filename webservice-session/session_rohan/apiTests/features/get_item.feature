Feature: Get item
    As a user i can get the item

    Scenario: Get item
        When I search for the item
        Then I should get the item
        Then api status code should be 200
        Then api response content type should be application/json
