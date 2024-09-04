import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/constants/strings.dart';
import 'package:frontend/src/features/list/presentation/controllers/shopping_list_details_controller.dart';
import 'package:frontend/src/features/list/presentation/widgets/item_add_sheet_state.dart';
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
  final _itemInputFocusNode = FocusNode();

  final double _minSheetHeight = 0.15;
  final double _maxSheetHeight = 0.8;

  final sheetScrollController = DraggableScrollableController();

  void _toggleSheetState({required bool open}) {
    if (open) {
      _itemInputFocusNode.requestFocus();
    } else {
      _itemInputFocusNode.unfocus();
    }
    ref.read(itemSheetStateProvider.notifier).toggleSheet(open: open);
  }

  void _animateSheet({required bool open}) {
    sheetScrollController.animateTo(
      open ? _maxSheetHeight : _minSheetHeight,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
    );
  }

  void _onScroll() {
    if (sheetScrollController.size < _minSheetHeight + 0.001) {
      _toggleSheetState(open: false);
    } else if (sheetScrollController.size >= _maxSheetHeight - 0.001) {
      _toggleSheetState(open: true);
    }
  }

  @override
  void initState() {
    super.initState();
    sheetScrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    sheetScrollController.removeListener(_onScroll);
    sheetScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSheetOpen = ref.watch(itemSheetStateProvider);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _animateSheet(open: isSheetOpen);
    });

    return DraggableScrollableSheet(
      controller: sheetScrollController,
      snap: true,
      initialChildSize: _minSheetHeight,
      minChildSize: _minSheetHeight,
      maxChildSize: _maxSheetHeight,
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
                          focusNode: _itemInputFocusNode,
                          onTap: () {
                            _toggleSheetState(open: true);
                          },
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
