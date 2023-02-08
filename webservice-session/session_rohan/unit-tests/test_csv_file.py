from src.item_actions import ItemAction

items = {"status":"Saved to CSV file"}

item_repo = ItemAction()

def test_add_item_to_csv_db_call(mocker):
  mock = mocker.patch('src.item_actions.ItemAction.add_item', return_value = [])
  _ = item_repo.add_item_to_csv()
  assert mock.call_count == 1

def test_add_item_to_csv(mocker):
  mock = mocker.patch('src.item_actions.ItemAction.add_item', return_value = items)
  item_returned = item_repo.add_item_to_csv()
  assert items == item_returned