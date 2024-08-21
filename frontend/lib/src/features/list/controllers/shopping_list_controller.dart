import 'package:frontend/src/features/items/domain/item.dart';
import 'package:frontend/src/features/list/data/repository/shopping_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_list_controller.g.dart';

@riverpod
class ListPageController extends _$ListPageController {
  @override
  FutureOr<void> build() {
    //no-op
  }

  Future<void> addList(String name) async {
    final listRepository = ref.read(listRepositoryProvider);
    listRepository.
  }
}
