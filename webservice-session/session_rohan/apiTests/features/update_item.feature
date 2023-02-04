Feature: Add item
    As a user i can Update the item

    Scenario: Add item
        When I update the item
        Then Item should be Updated
        Then api status code should be 200
        Then api response content type should be application/json
