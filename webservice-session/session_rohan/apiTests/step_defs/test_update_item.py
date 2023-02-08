import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/update_item.feature')

update_item_url = "http://127.0.0.1:5000/item/1"
item = {"item":"post","status":"started"}

@when('I update the item')
def update_item():
    pytest.api_response = requests.put(update_item_url,json=item)
    print(pytest.api_response)

@then('Item should be Updated')
def check_item_returned():
    data = pytest.api_response.json()
    print(data)
    assert type(data) == dict

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'

