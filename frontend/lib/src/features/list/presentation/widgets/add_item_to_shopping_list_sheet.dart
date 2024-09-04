import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_details_controller.dart';
import 'package:frontend/src/mixins/inputs.dart';

class AddItemToShoppingListSheet extends ConsumerStatefulWidget {
  const AddItemToShoppingListSheet({super.key, required this.listId});

  final int listId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddItemToShoppingListSheetState();
}

class _AddItemToShoppingListSheetState
    extends ConsumerState<AddItemToShoppingListSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              ref
                                  .read(shoppingListDetailsControllerProvider(
                                          widget.listId)
                                      .notifier)
                                  .addItemToList(
                                      name: value, listId: widget.listId);
                            }
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return Strings.nameRequired;
                            } else {
                              return null;
                            }
                          },
                          decoration: inputDecorationDefault(context))
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
