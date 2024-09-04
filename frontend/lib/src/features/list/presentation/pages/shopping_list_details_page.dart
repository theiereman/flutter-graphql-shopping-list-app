import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_details_controller.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/presentation/widgets/add_item_to_shopping_list_sheet.dart';
import 'package:frontend/src/features/list/presentation/widgets/item_add_sheet_state.dart';
import 'package:frontend/src/features/list/presentation/widgets/shopping_list_item.dart';
import 'package:frontend/src/helpers/async_value_error_snackbar.dart';

class ShoppingListDetailsPage extends ConsumerWidget {
  const ShoppingListDetailsPage({super.key, required this.listId});
  final int listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(
      shoppingListDetailsControllerProvider(listId),
      (_, state) => state.showSnackbarOnError(context),
    );
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
      body: Stack(
        children: [
          // Zone qui détecte les gestes
          GestureDetector(
            onTap: () => ref
                .read(itemSheetStateProvider.notifier)
                .toggleSheet(open: false),
            child: switch (currentShoppingList) {
              AsyncValue<ShoppingList>(:final valueOrNull?) =>
                valueOrNull.items.isNotEmpty
                    ? ListView.builder(
                        itemCount: valueOrNull.items.length,
                        itemBuilder: (context, index) {
                          final item = valueOrNull.items[index];
                          return Dismissible(
                            key: Key(item.id.toString()),
                            onDismissed: (direction) async {
                              await ref
                                  .read(shoppingListDetailsControllerProvider(
                                          listId)
                                      .notifier)
                                  .removeItemFromList(
                                      itemId: item.id, listId: listId);
                            },
                            background: Container(
                              color: Theme.of(context).colorScheme.error,
                              alignment: Alignment.centerLeft,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            secondaryBackground: Container(
                              color: Theme.of(context).colorScheme.error,
                              alignment: Alignment.centerRight,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            child: ShoppingListItem(item: item),
                          );
                        },
                      )
                    : const Center(child: Text(Strings.noItemsInList)),
              AsyncValue(:final error?) =>
                Center(child: Text('${Strings.error}: $error')),
              _ => const CircularProgressIndicator(),
            },
          ),

          // AddItemToShoppingListSheet qui ne doit pas être dans la zone GestureDetector
          Align(
            alignment: Alignment.bottomCenter,
            child: AddItemToShoppingListSheet(listId: listId),
          ),
        ],
      ),
    );
  }
}
