from item_repository import ItemRepository
import csv

class ItemAction:
    def __init__(self)->None:
        self.item_repo = ItemRepository()

    def get_all_items(self):
        try:
            items = self.item_repo.get_all_items()
            res =[]
            for item in items:
                res.append({
                    "id": item[0],
                    "item": item[1],
                    "status": item[2],
                    "reminder": item[3]
                })
            return res
        except Exception as e:
            print(e)
            return {}
    
    def add_item(self,item,reminder):
        try:
            item = self.item_repo.add_item(item,reminder)
            return item
        except Exception as e:
            print(e)
            return {}
    
    def get_item(self,item_id):
        try:
            items = self.item_repo.get_item(item_id)
            res =[]
            for item in items:
                res.append({
                    "id": item[0],
                    "Item": item[1],
                    "status": item[2],
                    "reminder": item[3]
                })
            return res
        except Exception as e:
            print(e)
            return {}
    
    def delete_item(self,item_id):
        try:
            items = self.item_repo.delete_item(item_id)
            return items
        except Exception as e:
            print(e)
            return {}
    
    def update_item(self,item_id,update_data):
        try:
            item = self.item_repo.update_item(item_id,update_data)
            return item
        except Exception as e:
            print(e)
            return {}
    
    def add_item_to_csv(self):
        try:
            columns = ["id","item","status","reminder"]
            rows = self.item_repo.get_all_items()
            with open('../items.csv', 'w') as csvfile:
                csvwriter = csv.writer(csvfile)
                csvwriter.writerow(columns)
                csvwriter.writerows(rows)
            return {"status":"Saved to CSV file"}
        except Exception as e:
            print(e)
            return {}