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
