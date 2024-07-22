import 'package:equatable/equatable.dart';
import 'package:frontend/src/features/items/domain/item.dart';

class ShoppingList extends Equatable {
  const ShoppingList(
      {required this.id, required this.name, this.items = const []});
  final int id;
  final String name;
  final List<Item> items;

  @override
  List<Object?> get props => [name];

  factory ShoppingList.fromMap(Map<String, dynamic> data) {
    final int id = data['id'];
    final String name = data['name'];
    final List<Item> items = (data['items'] as List?)
            ?.map((itemData) => Item.fromMap(itemData as Map<String, dynamic>))
            .toList() ??
        const [];
    return ShoppingList(id: id, name: name, items: items);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'items': items.map((item) => item.toMap()).toList(),
    };
  }
}
