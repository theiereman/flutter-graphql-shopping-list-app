import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_list_controller.g.dart';

@riverpod
class ShoppingListController extends _$ShoppingListController {
  @override
  FutureOr<void> build() async {
    //no-op
  }

  Future<void> addList({required String name}) async {
    final listRepo = ref.read(listRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => await listRepo.addList(name));
    ref.invalidate(listsQueryProvider);
    await future;
  }
}
