import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_details_controller.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/presentation/widgets/add_item_to_shopping_list_sheet.dart';
import 'package:frontend/src/features/list/presentation/widgets/shopping_list_item.dart';

class ShoppingListDetailsPage extends ConsumerWidget {
  const ShoppingListDetailsPage({super.key, required this.listId});
  final int listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ShoppingList> currentShoppingList =
        ref.watch(shoppingListDetailsControllerProvider(listId));

    return Scaffold(
      appBar: AppBar(
        title: switch (currentShoppingList) {
          AsyncValue<ShoppingList>(:final valueOrNull?) =>
            Text(valueOrNull.name),
          AsyncValue(:final error?) => Text('${Strings.error}: $error'),
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
                  return Dismissible(
                      key: Key(item.toString()),
                      onDismissed: (direction) {
                        valueOrNull.items.removeAt(index);
                        ref
                            .read(shoppingListDetailsControllerProvider(listId)
                                .notifier)
                            .removeItemFromList(
                                itemId: item.id, listId: listId);
                      },
                      background: Container(
                        color: Theme.of(context).colorScheme.error,
                        alignment: Alignment.centerLeft, // Aligner à gauche
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      secondaryBackground: Container(
                        color: Theme.of(context).colorScheme.error,
                        alignment: Alignment.centerRight, // Aligner à droite
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      child: ShoppingListItem(item: item));
                },
              )
            else
              const Center(child: Text(Strings.noItemsInList)),
            AddItemToShoppingListSheet(listId: listId)
          ]),
        AsyncValue(:final error?) =>
          Center(child: Text('${Strings.error}: $error')),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
