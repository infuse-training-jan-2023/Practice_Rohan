from src.item_repository import ItemRepository

items = [(1, 'Go to Goa', 'Not Started', 1)]

item_repo = ItemRepository()

def test_add_item_makes_db_call(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.add_item', return_value = [])
  _ = item_repo.add_item()
  assert mock.call_count == 1

def test_add_item(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.add_item', return_value = items)
  item_returned = item_repo.add_item()
  assert items == item_returned