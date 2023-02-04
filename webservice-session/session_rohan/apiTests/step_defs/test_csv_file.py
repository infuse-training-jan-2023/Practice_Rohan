import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/save_item_CSV.feature')

csv_item_url = "http://127.0.0.1:5000/items"

@when('I save the item in the CSV file')
def csv_item():
    pytest.api_response = requests.post(csv_item_url)

@then('item should be added')
def check_item_returned():
    body = pytest.api_response.json()
    assert type(body) == dict

@then('api status code should be 201')
def check_api_status():
    assert pytest.api_response.status_code == 201

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'

