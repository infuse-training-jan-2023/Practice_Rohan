from src.password_validation import validate_password

def test_valid_passwprd_status():
    password = "Rohan#1009"
    response = validate_password(password)
    assert response.status_code == 201

def test_validate_password_status():
    password = "Rohan#1009"
    response = validate_password(password)
    assert b'{"status": "Valid Password"}' == response.data

def test_invalidate_password_without_Uppercase():
    password = "rohan7823"
    response = validate_password(password)
    assert b'{"status": "Not A Valid Password"}' == response.data

def test_invalidate_password_without_special_character():
    password = "Rohan7823"
    response = validate_password(password)
    assert b'{"status": "Not A Valid Password"}' == response.data

def test_invalidate_password_length_less_than_eight():
    password = "Rohan#3"
    response = validate_password(password)
    assert b'{"status": "Not A Valid Password"}' == response.data
    