import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key, required this.listId});
  final int listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ShoppingList> currentShoppingList =
        ref.watch(ListQueryProvider(listId));

    return Container(
      child: currentShoppingList.when(
          data: (shoppingList) => Text(shoppingList.name),
          error: (Object error, StackTrace stackTrace) =>
              Text('Error : $error'),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
