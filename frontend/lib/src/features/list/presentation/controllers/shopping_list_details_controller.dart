import 'package:frontend/src/features/items/data/repository/item_repository.dart';
import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_list_details_controller.g.dart';

@riverpod
class ShoppingListDetailsController extends _$ShoppingListDetailsController {
  @override
  Future<ShoppingList> build(int listId) {
    return ref.watch(listQueryProvider(listId).future);
  }

  Future<void> removeItemFromList(
      {required int itemId, required int listId}) async {
    final itemRepo = ref.read(itemRepositoryProvider);
    final previousState = await future;
    //remove the item from the list (optimistic update)
    state = AsyncData(previousState.copyWith(
        items:
            previousState.items.where((item) => item.id != itemId).toList()));
    try {
      await itemRepo.removeItemFromList(itemId: itemId, listId: listId);
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
      ref.invalidate(
          listQueryProvider(listId)); //resets the list to actual value in db
    }
    ref.invalidate(listsQueryProvider);
    await future;
  }

  Future<void> addItemToList(
      {required String name, required int listId}) async {
    final itemRepo = ref.read(itemRepositoryProvider);
    state = const AsyncLoading();
    try {
      await itemRepo.addItemToList(name: name, listId: listId);
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
    }
    ref.invalidate(listQueryProvider(listId));
    ref.invalidate(listsQueryProvider);
    await future;
  }
}
