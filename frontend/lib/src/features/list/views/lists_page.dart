import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/features/list/data/repository/list_repository.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';

class ListsPage extends ConsumerWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ShoppingList>> listOfAllShoppingLists =
        ref.watch(listsQueryProvider);

    return Container(
      child: switch (listOfAllShoppingLists) {
        AsyncData(:final value) => GridView.builder(
            itemCount: value.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.4),
            itemBuilder: (context, index) {
              final shoppingList = value[index];
              return Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(shoppingList.name),
                      const SizedBox(height: 10),
                      Text(shoppingList.name)
                    ],
                  )));
            },
          ),
        AsyncError(:final error) => Text('Error : $error'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
