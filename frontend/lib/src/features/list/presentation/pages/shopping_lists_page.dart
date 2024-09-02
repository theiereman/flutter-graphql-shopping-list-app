import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_controller.dart';
import 'package:frontend/src/features/list/presentation/widgets/delete_list_sheet.dart';
import 'package:frontend/src/features/list/presentation/widgets/shopping_list_entry.dart';
import 'package:frontend/src/helpers/async_value_error_snackbar.dart';
import 'package:frontend/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class ShoppingListsPage extends ConsumerWidget {
  const ShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(
      shoppingListControllerProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    final AsyncValue<List<ShoppingList>> listOfAllShoppingLists =
        ref.watch(listsQueryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.myLists),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(AppRoutes.shoppingListCreate.name),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: switch (listOfAllShoppingLists) {
          AsyncData(:final value) => GridView.builder(
              itemCount: value.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.75),
              itemBuilder: (context, index) {
                final shoppingList = value[index];
                return GestureDetector(
                  onTap: () => context.goNamed(
                      AppRoutes.shoppingListDetails.name,
                      pathParameters: {'id': shoppingList.id.toString()}),
                  onLongPress: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return DeleteListBottomSheet(
                            shoppingListId: shoppingList.id);
                      },
                    );
                  },
                  child: ShoppingListEntry(shoppingList: shoppingList),
                );
              },
            ),
          AsyncError(:final error) => Text('${Strings.error} : $error'),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
