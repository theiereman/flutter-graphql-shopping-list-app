import 'package:equatable/equatable.dart';

class Item extends Equatable {
  const Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.amount});
  final int id;
  final String name;
  final String description;
  final int amount;

  @override
  List<Object?> get props => [name];

  factory Item.fromMap(Map<String, dynamic> data) {
    final int id = data['id'];
    final String name = data['name'];
    final String description = data['description'];
    final int amount = data['amount'];
    return Item(id: id, name: name, description: description, amount: amount);
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      'name': name,
      'decription': description,
      'amount': amount
    };
  }
}
