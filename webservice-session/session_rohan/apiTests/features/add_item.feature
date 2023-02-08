Feature: Add item
    As a user i can Add the item

    Scenario: Add item
        When I add the item
        Then Item should be added
        Then api status code should be 201
        Then api response content type should be application/json