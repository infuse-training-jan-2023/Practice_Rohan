Feature: Add item
    As a user i can create the user in the database

    Scenario: Add item
        When I create the user
        Then user should be added
        Then api status code should be 201
        Then api response content type should be application/json
