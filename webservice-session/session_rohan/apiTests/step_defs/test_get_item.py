import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/get_item.feature')

get_item_url = "http://127.0.0.1:5000/item/2"

@when('I search for the item')
def get_item():
    pytest.api_response = requests.get(get_item_url)

@then('I should get the item')
def check_item_returned():
    body = pytest.api_response.json()
    assert type(body) == list

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'

