from src.user_repository import UserRepository

user = [('rohan', 23, 'Male', 'GOA')]

item_repo = UserRepository()

def test_create_new_user_makes_db_call(mocker):
  mock = mocker.patch('src.user_repository.UserRepository.add_new_user', return_value = [])
  _ = item_repo.add_new_user()
  assert mock.call_count == 1

def test_create_new_user(mocker):
  mock = mocker.patch('src.user_repository.UserRepository.add_new_user', return_value = user)
  user_returned = item_repo.add_new_user()
  assert user == user_returned