import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_controller.dart';

class DeleteListBottomSheet extends ConsumerWidget {
  const DeleteListBottomSheet({
    super.key,
    required this.shoppingListId,
  });

  final int shoppingListId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      heightFactor: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.error),
              child: Text(Strings.deleteList,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onError)),
              onPressed: () async {
                await ref
                    .read(shoppingListControllerProvider.notifier)
                    .deleteList(id: shoppingListId);

                if (context.mounted) {
                  Navigator.pop(context);
                }
              }),
        ],
      ),
    );
  }
}
