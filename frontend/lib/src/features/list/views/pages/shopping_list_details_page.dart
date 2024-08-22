import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/controllers/shopping_list_controller.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/views/widgets/add_item_to_shopping_list_sheet.dart';
import 'package:frontend/src/features/list/views/widgets/shopping_list_item.dart';

class ShoppingListDetailsPage extends ConsumerWidget {
  const ShoppingListDetailsPage({super.key, required this.listId});
  final int listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ShoppingList> currentShoppingList =
        ref.watch(shoppingListControllerProvider(listId));

    return Scaffold(
      appBar: AppBar(
        title: switch (currentShoppingList) {
          AsyncValue<ShoppingList>(:final valueOrNull?) =>
            Text(valueOrNull.name),
          AsyncValue(:final error?) => Text('Error: $error'),
          _ => const CircularProgressIndicator(),
        },
      ),
      body: switch (currentShoppingList) {
        AsyncValue<ShoppingList>(:final valueOrNull?) => Stack(children: [
            if (valueOrNull.items.isNotEmpty)
              ListView.builder(
                itemCount: valueOrNull.items.length,
                itemBuilder: (context, index) {
                  final item = valueOrNull.items[index];
                  return ShoppingListItem(item: item);
                },
              )
            else
              const Center(child: Text("No items in this list")),
            AddItemToShoppingListSheet(listId: listId)
          ]),
        AsyncValue(:final error?) => Text('Error: $error'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
