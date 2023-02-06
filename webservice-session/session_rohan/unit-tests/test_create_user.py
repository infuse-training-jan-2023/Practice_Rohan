from src.item_repository import ItemRepository

user = [('rohan', 23, 'Male', 'GOA')]

item_repo = ItemRepository()

def test_add_new_user_makes_db_call(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.add_new_user', return_value = [])
  _ = item_repo.add_new_user()
  assert mock.call_count == 1

def test_add_new_user_item(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.add_new_user', return_value = user)
  user_returned = item_repo.add_new_user()
  assert user == user_returned