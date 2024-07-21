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
        AsyncData(:final value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(value[index].name);
            }),
        AsyncError(:final error) => Text('Error : $error'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
