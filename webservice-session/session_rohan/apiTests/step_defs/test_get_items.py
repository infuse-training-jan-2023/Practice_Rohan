import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/get_all_items.feature')

get_all_items_url = "http://127.0.0.1:5000/item"

@when('I search for All items')
def get_all_items():
    pytest.api_response = requests.get(get_all_items_url)

@then('I SHOULD get all the items')
def check_items_returned():
    body = pytest.api_response.json()
    for item in body:
        assert type(item) == dict

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'

