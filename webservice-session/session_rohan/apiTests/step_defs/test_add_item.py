import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/add_item.feature')

add_item_url = "http://127.0.0.1:5000/item"
item = {"item":"post","reminder":False}
@when('I add the item')
def add_item():
    pytest.api_response = requests.post(add_item_url,json=item)
    print(pytest.api_response)

@then('Item should be added')
def check_item_returned():
    data = pytest.api_response.json()
    print(data)
    assert type(data) == dict

@then('api status code should be 201')
def check_api_status():
    assert pytest.api_response.status_code == 201

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'

