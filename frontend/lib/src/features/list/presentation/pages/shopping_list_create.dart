import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_controller.dart';
import 'package:frontend/src/helpers/async_value_error_snackbar.dart';
import 'package:frontend/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class ShoppingListCreatePage extends ConsumerStatefulWidget {
  const ShoppingListCreatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ShoppingListCreatePageState();
}

class _ShoppingListCreatePageState
    extends ConsumerState<ShoppingListCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      shoppingListControllerProvider,
      (_, state) => state.showSnackbarOnError(context),
    );
    return Container(
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'The name is required.';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        await ref
                            .read(shoppingListControllerProvider.notifier)
                            .addList(name: _nameController.text);

                        context.goNamed(AppRoutes.shoppingLists.name);
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            )));
  }
}
