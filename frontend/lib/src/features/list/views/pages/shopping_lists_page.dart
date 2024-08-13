import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/views/widgets/shopping_list_entry.dart';
import 'package:frontend/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class ShoppingListsPage extends ConsumerWidget {
  const ShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ShoppingList>> listOfAllShoppingLists =
        ref.watch(listsQueryProvider);

    return Container(
      child: switch (listOfAllShoppingLists) {
        AsyncData(:final value) => GridView.builder(
            itemCount: value.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.75),
            itemBuilder: (context, index) {
              final shoppingList = value[index];
              return GestureDetector(
                onTap: () => context.goNamed(AppRoutes.shoppingListDetails.name,
                    pathParameters: {'id': shoppingList.id.toString()}),
                child: ShoppingListEntry(shoppingList: shoppingList),
              );
            },
          ),
        AsyncError(:final error) => Text('Error : $error'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
