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
          title: currentShoppingList.when(
              data: (ShoppingList data) => Text(
                    data.name,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.primary),
                  ),
              error: (Object error, StackTrace stackTrace) => const Text("N/A"),
              loading: () => const CircularProgressIndicator())),
      body: currentShoppingList.when(
          data: (shoppingList) {
            return Stack(children: [
              if (shoppingList.items.isNotEmpty)
                ListView.builder(
                  itemCount: shoppingList.items.length,
                  itemBuilder: (context, index) {
                    final item = shoppingList.items[index];
                    return ShoppingListItem(item: item);
                  },
                )
              else
                const Center(child: Text("No items in this list")),
              AddItemToShoppingListSheet(listId: listId)
            ]);
          },
          error: (Object error, StackTrace stackTrace) =>
              Text('${Strings.error} : $error'),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
