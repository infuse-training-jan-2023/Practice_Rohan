Feature: Delete item
    As a user i can delete the item

    Scenario: Delete item
        When I delete the item
        Then Item should be deleted
        Then api status code should be 200
        Then api response content type should be application/json
