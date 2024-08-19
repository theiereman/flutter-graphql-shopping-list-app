import 'package:flutter/material.dart';
import 'package:frontend/src/utils/theme.dart';

class AddItemToShoppingListSheet extends StatelessWidget {
  const AddItemToShoppingListSheet({super.key});

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
              child: TextField(
                onSubmitted: (newItem) {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Search...',
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
