Feature: Add item
    As a user i can save item in the CSV file

    Scenario: Add item
        When I save the item in the CSV file
        Then item should be added
        Then api status code should be 201
        Then api response content type should be application/json
