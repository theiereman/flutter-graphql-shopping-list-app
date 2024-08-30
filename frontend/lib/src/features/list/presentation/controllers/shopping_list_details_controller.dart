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
    state = const AsyncLoading();
    await itemRepo.removeItemFromList(itemId: itemId, listId: listId);
    ref.invalidate(listQueryProvider(listId));
    ref.invalidate(listsQueryProvider);
    await future;
  }

  Future<void> addItemToList(
      {required String name, required int listId}) async {
    final itemRepo = ref.read(itemRepositoryProvider);
    state = const AsyncLoading();
    await itemRepo.addItemToList(name: name, listId: listId);
    ref.invalidate(listQueryProvider(listId));
    ref.invalidate(listsQueryProvider);
    await future;
  }
}
