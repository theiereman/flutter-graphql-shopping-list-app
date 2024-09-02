import 'package:frontend/src/features/list/domain/shopping_list.dart';
import 'package:frontend/src/utils/graphql.dart';
import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_list_repository.g.dart';

class ListRepository {
  const ListRepository(this._graphQLClient);
  final GraphQLClient _graphQLClient;

  Future<List<ShoppingList>> fetchLists() async {
    const listsQuery = r'''
      query Lists {
        lists {
          id
          name
          items {
            id
            description
            name
            amount
          }
        }
      }
    ''';

    final QueryOptions options = QueryOptions(document: gql(listsQuery));
    final QueryResult result = await _graphQLClient.query(options);

    if (result.hasException) {
      throw Exception(result.exception);
    }

    List<ShoppingList> list = [];
    result.data?['lists'].forEach((item) {
      list.add(ShoppingList.fromMap(item));
    });
    return list;
  }

  Future<ShoppingList> fetchList(int id) async {
    const singleListQuery = r'''
      query List($listId: Int!) {
        list(id: $listId) {
          id
          name
          items {
            id
            name
            amount
            category
            description
          }
        }
      }
    ''';

    final QueryOptions options = QueryOptions(
      document: gql(singleListQuery),
      variables: <String, dynamic>{
        'listId': id,
      },
    );

    final QueryResult result = await _graphQLClient.query(options);

    if (result.hasException) {
      throw Exception(result.exception);
    }

    return ShoppingList.fromMap(result.data?['list']);
  }

  Future<void> addList(String name) async {
    const addListMutation = r'''
      mutation AddListForUser($addListForUserData: UserListCreationInput!) {
        addListForUser(data: $addListForUserData) {
          id
          name
        }
      }
    ''';

    final MutationOptions options = MutationOptions(
      document: gql(addListMutation),
      variables: <String, dynamic>{
        'addListForUserData': {
          'name': name,
          'userId': 1, //! TODO: get user id from auth
        }
      },
    );

    final QueryResult result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception);
    }

    return;
  }

  Future<void> deleteList(int id) async {
    const deleteListMutation = r'''
      mutation DeleteList($deleteListData: DeleteListInput!) {
        deleteList(data: $deleteListData) {
          id
        }
      }
    ''';

    final MutationOptions options = MutationOptions(
      document: gql(deleteListMutation),
      variables: <String, dynamic>{
        'deleteListData': {'id': id}
      },
    );

    final QueryResult result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception);
    }

    return;
  }
}

@Riverpod(keepAlive: true)
ListRepository listRepository(ListRepositoryRef ref) {
  return ListRepository(ref.watch(graphQLClientProvider));
}

@riverpod
Future<List<ShoppingList>> listsQuery(ListsQueryRef ref) async {
  final repository = ref.watch(listRepositoryProvider);
  return repository.fetchLists();
}

@riverpod
Future<ShoppingList> listQuery(ListQueryRef ref, int id) async {
  final repository = ref.watch(listRepositoryProvider);
  return repository.fetchList(id);
}
