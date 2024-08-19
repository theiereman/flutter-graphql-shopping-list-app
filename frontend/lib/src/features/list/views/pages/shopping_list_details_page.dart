import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/views/widgets/shopping_list_item.dart';

class ShoppingListDetailsPage extends ConsumerWidget {
  const ShoppingListDetailsPage({super.key, required this.listId});
  final int listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ShoppingList> currentShoppingList =
        ref.watch(ListQueryProvider(listId));

    return Scaffold(
      appBar: AppBar(
          title: currentShoppingList.when(
              data: (ShoppingList data) => Text(data.name),
              error: (Object error, StackTrace stackTrace) => const Text("N/A"),
              loading: () => const CircularProgressIndicator())),
      body: currentShoppingList.when(
          data: (shoppingList) {
            if (shoppingList.items.isNotEmpty) {
              return ListView.builder(
                itemCount: shoppingList.items.length,
                itemBuilder: (context, index) {
                  final item = shoppingList.items[index];
                  return ShoppingListItem(item: item);
                },
              );
            } else {
              return const Center(child: Text("No items in this list"));
            }
          },
          error: (Object error, StackTrace stackTrace) =>
              Text('${Strings.error} : $error'),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
