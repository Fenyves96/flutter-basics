import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];
  void _addItem() async {
    final newItem =
        await Navigator.of(context).push<GroceryItem>(MaterialPageRoute(
      builder: (ctx) => const NewItem(),
    ));
    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Groceries'),
          actions: [
            IconButton(onPressed: _addItem, icon: const Icon(Icons.add))
          ],
        ),
        body: !_groceryItems.isEmpty
            ? ListView.builder(
                itemCount: _groceryItems.length,
                itemBuilder: (ctx, index) => Dismissible(
                  direction: DismissDirection.endToStart,
                  key: Key(_groceryItems[index].id),
                  onDismissed: (direction) {
                    var deletedItemName = _groceryItems[index].name!;
                    _groceryItems.remove(_groceryItems[index]);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(deletedItemName + ' item deleted')));
                  },
                  child: ListTile(
                    title: Text(_groceryItems[index].name),
                    leading: Container(
                      width: 24,
                      height: 24,
                      color: _groceryItems[index].category.color,
                    ),
                    trailing: Text(
                      _groceryItems[index].quantity.toString(),
                    ),
                  ),
                ),
              )
            : Text('No item here'));
  }
}
