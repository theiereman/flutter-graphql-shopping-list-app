import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_add_sheet_state.g.dart';

@riverpod
class ItemSheetState extends _$ItemSheetState {
  @override
  bool build() {
    return false;
  }

  void toggleSheet({required bool open}) {
    state = open;
  }
}
