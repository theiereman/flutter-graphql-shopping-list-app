import 'package:frontend/src/utils/graphql.dart';
import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_repository.g.dart';

class ItemRepository {
  const ItemRepository(this._graphQLClient);
  final GraphQLClient _graphQLClient;

  Future<void> addItemToList({
    required String name,
    String description = "",
    required int listId,
  }) async {
    const addItemToListMutation = r'''
      mutation CreateItem($createItemData: IngredientCreationInput!) {
        createItem(data: $createItemData) {
          id
          list {
            id
          }
          name
          category
          amount
          description
        }
      }
    ''';

    final MutationOptions options = MutationOptions(
        document: gql(addItemToListMutation),
        variables: <String, dynamic>{
          'createItemData': {
            'name': name,
            'description': description,
            'listId': listId,
          }
        });

    final QueryResult result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return;
  }

  Future<void> removeItemFromList(
      {required int itemId, required int listId}) async {
    const removeItemFromListMutation = r'''
        mutation RemoveItemFromList($data: RemoveItemFromListInput!) {
        removeItemFromList(data: $data) {
          id
        }
      }
    ''';

    final MutationOptions options = MutationOptions(
      document: gql(removeItemFromListMutation),
      variables: <String, dynamic>{
        'data': {
          'itemId': itemId,
          'listId': listId,
        }
      },
    );

    final QueryResult result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return;
  }
}

@Riverpod(keepAlive: true)
ItemRepository itemRepository(ItemRepositoryRef ref) {
  return ItemRepository(ref.watch(graphQLClientProvider));
}
