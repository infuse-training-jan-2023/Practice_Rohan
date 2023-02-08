Feature: Get All items
    As a user i can get all the items

    Scenario: Get All items
        When I search for All items
        Then I SHOULD get all the items
        Then api status code should be 200
        Then api response content type should be application/json
