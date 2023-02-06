from src.item_repository import ItemRepository

items = {'status':'Item deleted successfully'}

item_repo = ItemRepository()

def test_delete_item_makes_db_call(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.delete_item', return_value = [])
  _ = item_repo.delete_item()
  assert mock.call_count == 1

def test_delete_item(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.delete_item', return_value = items)
  item_returned = item_repo.delete_item()
  assert items == item_returned