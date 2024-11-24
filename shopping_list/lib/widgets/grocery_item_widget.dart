import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryItemWidget extends StatelessWidget {
  final GroceryItem groceryItem;

  const GroceryItemWidget({super.key, required this.groceryItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            height: 20,
            width: 20,
            color: groceryItem.category.color,
          ),
          Text(groceryItem.name),
          const Spacer(),
          Text(
            groceryItem.quantity.toString(),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
