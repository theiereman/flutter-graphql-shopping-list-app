import 'package:equatable/equatable.dart';

class ShoppingList extends Equatable {
  const ShoppingList({required this.id, required this.name});
  final int id;
  final String name;

  @override
  List<Object?> get props => [name];

  factory ShoppingList.fromMap(Map<String, dynamic> data) {
    final int id = data['id'];
    final String name = data['name'];
    return ShoppingList(id: id, name: name);
  }

  Map<String, dynamic> toMap() {
    return {"id": id, 'name': name};
  }
}
