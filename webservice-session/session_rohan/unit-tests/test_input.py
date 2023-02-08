from src.input_validation import validate_input

def test_valid_input_status():
    input = 1
    response = validate_input(input)
    assert response.status_code == 200

def test_validate_input_status():
    input = 1
    response = validate_input(input)
    print(response.data)
    assert b'{\n  "userId": 1,\n  "id": 1,\n  "title": "delectus aut autem",\n  "completed": false\n}' == response.data

def test_invalidate_input():
    input = 201
    response = validate_input(input)
    assert b'{"status": "Input must be integer between 1 to 200"}' == response.data
