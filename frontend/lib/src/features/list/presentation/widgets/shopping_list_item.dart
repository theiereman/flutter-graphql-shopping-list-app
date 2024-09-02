import 'package:flutter/material.dart';
import 'package:frontend/src/features/items/domain/item.dart';
import 'package:frontend/src/utils/theme.dart';

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomTheme.defaultPadding,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: CustomTheme.defaultRadius),
        child: Row(
          children: [
            Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Expanded(
              child: Container(
                margin: CustomTheme.defaultMargin,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      item.description.isNotEmpty
                          ? Text(item.description)
                          : Container()
                    ],
                  ),
                ),
              ),
            ),
            Text('x${item.amount}',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary))
          ],
        ),
      ),
    );
  }
}
