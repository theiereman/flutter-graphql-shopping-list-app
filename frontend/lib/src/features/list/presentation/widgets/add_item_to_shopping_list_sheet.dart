import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_details_controller.dart';
import 'package:frontend/src/utils/theme.dart';

class AddItemToShoppingListSheet extends ConsumerWidget {
  const AddItemToShoppingListSheet({super.key, required this.listId});

  final int listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DraggableScrollableSheet(
      initialChildSize: 0.13,
      minChildSize: 0.13,
      maxChildSize: 0.7,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onSubmitted: (itemName) {
                  ref
                      .read(shoppingListDetailsControllerProvider(listId)
                          .notifier)
                      .addItemToList(name: itemName, listId: listId);
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: Strings.searchbar_hint,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: CustomTheme.defaultRadius,
                        borderSide: BorderSide(
                            width: 2,
                            color: Theme.of(context).colorScheme.secondary)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: CustomTheme.defaultRadius,
                        borderSide: BorderSide(
                            width: 2,
                            color: Theme.of(context).colorScheme.error)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: CustomTheme.defaultRadius,
                        borderSide: BorderSide(
                            width: 2,
                            color: Theme.of(context).colorScheme.secondary)),
                    disabledBorder: const OutlineInputBorder(
                        borderRadius: CustomTheme.defaultRadius,
                        borderSide: BorderSide(width: 2, color: Colors.grey))),
              ),
            ),
          ),
        );
      },
    );
  }
}
