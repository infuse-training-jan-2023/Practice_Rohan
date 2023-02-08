from src.email_validation import validate_email

def test_valid_email_status():
    email = "ankitrai326@gmail.com"
    response = validate_email(email)
    assert response.status_code == 201

def test_validate_email_output():
    email = "ankitrai326@gmail.com"
    response = validate_email(email)
    assert b'{"status": "Valid Email"}' == response.data

def test_invalidate_email_output_without_at_the_rate():
    email = "ankitrai326gmail.com"
    response = validate_email(email)
    assert b'{"status": "Not A Valid Email"}' == response.data

def test_invalidate_email_output_without_domain():
    email = "ankitrai326@gmail."
    response = validate_email(email)
    assert b'{"status": "Not A Valid Email"}' == response.data

def test_invalidate_email_output_without_body():
    email = "@gmailcom"
    response = validate_email(email)
    assert b'{"status": "Not A Valid Email"}' == response.data