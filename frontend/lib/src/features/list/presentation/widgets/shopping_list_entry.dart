import 'package:flutter/material.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/helpers/string_formatter.dart';
import 'package:frontend/src/utils/theme.dart';

class ShoppingListEntry extends StatelessWidget {
  const ShoppingListEntry({
    super.key,
    required this.shoppingList,
  });

  final ShoppingList shoppingList;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: CustomTheme.defaultRadius),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shoppingList.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onPrimaryFixed),
            ),
            Text(StringFormatter.numberOf(shoppingList.items.length, "item"),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryFixed))
          ],
        ));
  }
}
