import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/create_user.feature')

create_item_url = "http://127.0.0.1:5000/user"
user = {"name": "Rohan","age": "29","gender": "Male","address": "GOA"}

@when('I create the user')
def create_user():
    pytest.api_response = requests.post(create_item_url,json=user)
    print(pytest.api_response)

@then('user should be added')
def check_item_returned():
    data = pytest.api_response.json()
    assert type(data) == dict

@then('api status code should be 201')
def check_api_status():
    assert pytest.api_response.status_code == 201

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'

